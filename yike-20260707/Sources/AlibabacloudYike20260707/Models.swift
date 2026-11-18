import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddProjectMembersRequest : Tea.TeaModel {
    public var projectId: String?

    public var yikeUserIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.yikeUserIds != nil {
            map["YikeUserIds"] = self.yikeUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["YikeUserIds"] as? String {
            self.yikeUserIds = value
        }
    }
}

public class AddProjectMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class AddProjectMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddProjectMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddProjectMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetMediasRequest : Tea.TeaModel {
    public var authTimeout: Int64?

    public var bizConfig: String?

    public var mediaIds: String?

    public var returnDynamicMeta: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authTimeout != nil {
            map["AuthTimeout"] = self.authTimeout!
        }
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.mediaIds != nil {
            map["MediaIds"] = self.mediaIds!
        }
        if self.returnDynamicMeta != nil {
            map["ReturnDynamicMeta"] = self.returnDynamicMeta!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthTimeout"] as? Int64 {
            self.authTimeout = value
        }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["MediaIds"] as? String {
            self.mediaIds = value
        }
        if let value = dict["ReturnDynamicMeta"] as? Bool {
            self.returnDynamicMeta = value
        }
    }
}

public class BatchGetMediasResponseBody : Tea.TeaModel {
    public class MediaInfos : Tea.TeaModel {
        public class FileInfoList : Tea.TeaModel {
            public class AudioStreamInfoList : Tea.TeaModel {
                public var bitrate: String?

                public var channelLayout: String?

                public var channels: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var fps: String?

                public var index: String?

                public var lang: String?

                public var numFrames: String?

                public var profile: String?

                public var sampleFmt: String?

                public var sampleRate: String?

                public var startTime: String?

                public var timebase: String?

                public override init() {
                    super.init()
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
                    if self.fps != nil {
                        map["Fps"] = self.fps!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.numFrames != nil {
                        map["NumFrames"] = self.numFrames!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.sampleFmt != nil {
                        map["SampleFmt"] = self.sampleFmt!
                    }
                    if self.sampleRate != nil {
                        map["SampleRate"] = self.sampleRate!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["ChannelLayout"] as? String {
                        self.channelLayout = value
                    }
                    if let value = dict["Channels"] as? String {
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
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Fps"] as? String {
                        self.fps = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["NumFrames"] as? String {
                        self.numFrames = value
                    }
                    if let value = dict["Profile"] as? String {
                        self.profile = value
                    }
                    if let value = dict["SampleFmt"] as? String {
                        self.sampleFmt = value
                    }
                    if let value = dict["SampleRate"] as? String {
                        self.sampleRate = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                }
            }
            public class FileBasicInfo : Tea.TeaModel {
                public var bitrate: String?

                public var duration: String?

                public var fileName: String?

                public var fileSize: String?

                public var fileStatus: String?

                public var fileType: String?

                public var fileUrl: String?

                public var formatName: String?

                public var height: String?

                public var region: String?

                public var width: String?

                public override init() {
                    super.init()
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
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileStatus != nil {
                        map["FileStatus"] = self.fileStatus!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.formatName != nil {
                        map["FormatName"] = self.formatName!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? String {
                        self.fileSize = value
                    }
                    if let value = dict["FileStatus"] as? String {
                        self.fileStatus = value
                    }
                    if let value = dict["FileType"] as? String {
                        self.fileType = value
                    }
                    if let value = dict["FileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["FormatName"] as? String {
                        self.formatName = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public class SubtitleStreamInfoList : Tea.TeaModel {
                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var index: String?

                public var lang: String?

                public var startTime: String?

                public var timebase: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
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
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                }
            }
            public class VideoStreamInfoList : Tea.TeaModel {
                public var avgFPS: String?

                public var bitrate: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var dar: String?

                public var duration: String?

                public var fps: String?

                public var hasBFrames: String?

                public var height: String?

                public var index: String?

                public var lang: String?

                public var level: String?

                public var nbFrames: String?

                public var numFrames: String?

                public var pixFmt: String?

                public var profile: String?

                public var rotate: String?

                public var sar: String?

                public var startTime: String?

                public var timebase: String?

                public var width: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avgFPS != nil {
                        map["AvgFPS"] = self.avgFPS!
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
                    if self.dar != nil {
                        map["Dar"] = self.dar!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fps != nil {
                        map["Fps"] = self.fps!
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
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.nbFrames != nil {
                        map["Nb_frames"] = self.nbFrames!
                    }
                    if self.numFrames != nil {
                        map["NumFrames"] = self.numFrames!
                    }
                    if self.pixFmt != nil {
                        map["PixFmt"] = self.pixFmt!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.rotate != nil {
                        map["Rotate"] = self.rotate!
                    }
                    if self.sar != nil {
                        map["Sar"] = self.sar!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvgFPS"] as? String {
                        self.avgFPS = value
                    }
                    if let value = dict["Bitrate"] as? String {
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
                    if let value = dict["Dar"] as? String {
                        self.dar = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Fps"] as? String {
                        self.fps = value
                    }
                    if let value = dict["HasBFrames"] as? String {
                        self.hasBFrames = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                    if let value = dict["Nb_frames"] as? String {
                        self.nbFrames = value
                    }
                    if let value = dict["NumFrames"] as? String {
                        self.numFrames = value
                    }
                    if let value = dict["PixFmt"] as? String {
                        self.pixFmt = value
                    }
                    if let value = dict["Profile"] as? String {
                        self.profile = value
                    }
                    if let value = dict["Rotate"] as? String {
                        self.rotate = value
                    }
                    if let value = dict["Sar"] as? String {
                        self.sar = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public var audioStreamInfoList: [BatchGetMediasResponseBody.MediaInfos.FileInfoList.AudioStreamInfoList]?

            public var fileBasicInfo: BatchGetMediasResponseBody.MediaInfos.FileInfoList.FileBasicInfo?

            public var subtitleStreamInfoList: [BatchGetMediasResponseBody.MediaInfos.FileInfoList.SubtitleStreamInfoList]?

            public var videoStreamInfoList: [BatchGetMediasResponseBody.MediaInfos.FileInfoList.VideoStreamInfoList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fileBasicInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.audioStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AudioStreamInfoList"] = tmp
                }
                if self.fileBasicInfo != nil {
                    map["FileBasicInfo"] = self.fileBasicInfo?.toMap()
                }
                if self.subtitleStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subtitleStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["SubtitleStreamInfoList"] = tmp
                }
                if self.videoStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.videoStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["VideoStreamInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioStreamInfoList"] as? [Any?] {
                    var tmp : [BatchGetMediasResponseBody.MediaInfos.FileInfoList.AudioStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetMediasResponseBody.MediaInfos.FileInfoList.AudioStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.audioStreamInfoList = tmp
                }
                if let value = dict["FileBasicInfo"] as? [String: Any?] {
                    var model = BatchGetMediasResponseBody.MediaInfos.FileInfoList.FileBasicInfo()
                    model.fromMap(value)
                    self.fileBasicInfo = model
                }
                if let value = dict["SubtitleStreamInfoList"] as? [Any?] {
                    var tmp : [BatchGetMediasResponseBody.MediaInfos.FileInfoList.SubtitleStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetMediasResponseBody.MediaInfos.FileInfoList.SubtitleStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subtitleStreamInfoList = tmp
                }
                if let value = dict["VideoStreamInfoList"] as? [Any?] {
                    var tmp : [BatchGetMediasResponseBody.MediaInfos.FileInfoList.VideoStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetMediasResponseBody.MediaInfos.FileInfoList.VideoStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.videoStreamInfoList = tmp
                }
            }
        }
        public class MediaBasicInfo : Tea.TeaModel {
            public var categoryId: Int64?

            public var categoryName: String?

            public var coverURL: String?

            public var createTime: String?

            public var description_: String?

            public var inputURL: String?

            public var mediaId: String?

            public var mediaTags: String?

            public var mediaType: String?

            public var modifiedTime: String?

            public var snapshots: String?

            public var source: String?

            public var spriteImages: String?

            public var status: String?

            public var title: String?

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
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.coverURL != nil {
                    map["CoverURL"] = self.coverURL!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.inputURL != nil {
                    map["InputURL"] = self.inputURL!
                }
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.mediaTags != nil {
                    map["MediaTags"] = self.mediaTags!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.snapshots != nil {
                    map["Snapshots"] = self.snapshots!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.spriteImages != nil {
                    map["SpriteImages"] = self.spriteImages!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.userData != nil {
                    map["UserData"] = self.userData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryId"] as? Int64 {
                    self.categoryId = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["CoverURL"] as? String {
                    self.coverURL = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["InputURL"] as? String {
                    self.inputURL = value
                }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["MediaTags"] as? String {
                    self.mediaTags = value
                }
                if let value = dict["MediaType"] as? String {
                    self.mediaType = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["Snapshots"] as? String {
                    self.snapshots = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SpriteImages"] as? String {
                    self.spriteImages = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["UserData"] as? String {
                    self.userData = value
                }
            }
        }
        public class MediaDynamicInfo : Tea.TeaModel {
            public class DynamicMetaData : Tea.TeaModel {
                public var data: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.data != nil {
                        map["Data"] = self.data!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? String {
                        self.data = value
                    }
                }
            }
            public var dynamicMetaData: BatchGetMediasResponseBody.MediaInfos.MediaDynamicInfo.DynamicMetaData?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dynamicMetaData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dynamicMetaData != nil {
                    map["DynamicMetaData"] = self.dynamicMetaData?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DynamicMetaData"] as? [String: Any?] {
                    var model = BatchGetMediasResponseBody.MediaInfos.MediaDynamicInfo.DynamicMetaData()
                    model.fromMap(value)
                    self.dynamicMetaData = model
                }
            }
        }
        public var fileInfoList: [BatchGetMediasResponseBody.MediaInfos.FileInfoList]?

        public var mediaBasicInfo: BatchGetMediasResponseBody.MediaInfos.MediaBasicInfo?

        public var mediaDynamicInfo: BatchGetMediasResponseBody.MediaInfos.MediaDynamicInfo?

        public var mediaId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mediaBasicInfo?.validate()
            try self.mediaDynamicInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileInfoList != nil {
                var tmp : [Any] = []
                for k in self.fileInfoList! {
                    tmp.append(k.toMap())
                }
                map["FileInfoList"] = tmp
            }
            if self.mediaBasicInfo != nil {
                map["MediaBasicInfo"] = self.mediaBasicInfo?.toMap()
            }
            if self.mediaDynamicInfo != nil {
                map["MediaDynamicInfo"] = self.mediaDynamicInfo?.toMap()
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileInfoList"] as? [Any?] {
                var tmp : [BatchGetMediasResponseBody.MediaInfos.FileInfoList] = []
                for v in value {
                    if v != nil {
                        var model = BatchGetMediasResponseBody.MediaInfos.FileInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileInfoList = tmp
            }
            if let value = dict["MediaBasicInfo"] as? [String: Any?] {
                var model = BatchGetMediasResponseBody.MediaInfos.MediaBasicInfo()
                model.fromMap(value)
                self.mediaBasicInfo = model
            }
            if let value = dict["MediaDynamicInfo"] as? [String: Any?] {
                var model = BatchGetMediasResponseBody.MediaInfos.MediaDynamicInfo()
                model.fromMap(value)
                self.mediaDynamicInfo = model
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
        }
    }
    public var ignoredList: [String]?

    public var mediaInfos: [BatchGetMediasResponseBody.MediaInfos]?

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
        if self.ignoredList != nil {
            map["IgnoredList"] = self.ignoredList!
        }
        if self.mediaInfos != nil {
            var tmp : [Any] = []
            for k in self.mediaInfos! {
                tmp.append(k.toMap())
            }
            map["MediaInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IgnoredList"] as? [String] {
            self.ignoredList = value
        }
        if let value = dict["MediaInfos"] as? [Any?] {
            var tmp : [BatchGetMediasResponseBody.MediaInfos] = []
            for v in value {
                if v != nil {
                    var model = BatchGetMediasResponseBody.MediaInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mediaInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchGetMediasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetMediasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetMediasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetVideoCharacterReplaceJobsRequest : Tea.TeaModel {
    public var jobIds: String?

    public override init() {
        super.init()
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
        if let value = dict["JobIds"] as? String {
            self.jobIds = value
        }
    }
}

public class BatchGetVideoCharacterReplaceJobsResponseBody : Tea.TeaModel {
    public class JobList : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class AudioResult : Tea.TeaModel {
                public var mediaId: String?

                public var outputUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mediaId != nil {
                        map["MediaId"] = self.mediaId!
                    }
                    if self.outputUrl != nil {
                        map["OutputUrl"] = self.outputUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MediaId"] as? String {
                        self.mediaId = value
                    }
                    if let value = dict["OutputUrl"] as? String {
                        self.outputUrl = value
                    }
                }
            }
            public class ImageResult : Tea.TeaModel {
                public var mediaId: String?

                public var outputUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mediaId != nil {
                        map["MediaId"] = self.mediaId!
                    }
                    if self.outputUrl != nil {
                        map["OutputUrl"] = self.outputUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MediaId"] as? String {
                        self.mediaId = value
                    }
                    if let value = dict["OutputUrl"] as? String {
                        self.outputUrl = value
                    }
                }
            }
            public class VideoResult : Tea.TeaModel {
                public var mediaId: String?

                public var outputUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mediaId != nil {
                        map["MediaId"] = self.mediaId!
                    }
                    if self.outputUrl != nil {
                        map["OutputUrl"] = self.outputUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MediaId"] as? String {
                        self.mediaId = value
                    }
                    if let value = dict["OutputUrl"] as? String {
                        self.outputUrl = value
                    }
                }
            }
            public var audioResult: [BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.AudioResult]?

            public var imageResult: [BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.ImageResult]?

            public var videoResult: [BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.VideoResult]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioResult != nil {
                    var tmp : [Any] = []
                    for k in self.audioResult! {
                        tmp.append(k.toMap())
                    }
                    map["AudioResult"] = tmp
                }
                if self.imageResult != nil {
                    var tmp : [Any] = []
                    for k in self.imageResult! {
                        tmp.append(k.toMap())
                    }
                    map["ImageResult"] = tmp
                }
                if self.videoResult != nil {
                    var tmp : [Any] = []
                    for k in self.videoResult! {
                        tmp.append(k.toMap())
                    }
                    map["VideoResult"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioResult"] as? [Any?] {
                    var tmp : [BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.AudioResult] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.AudioResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.audioResult = tmp
                }
                if let value = dict["ImageResult"] as? [Any?] {
                    var tmp : [BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.ImageResult] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.ImageResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.imageResult = tmp
                }
                if let value = dict["VideoResult"] as? [Any?] {
                    var tmp : [BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.VideoResult] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result.VideoResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.videoResult = tmp
                }
            }
        }
        public var appId: String?

        public var appInputConfig: String?

        public var executionFinishTime: String?

        public var executionStartTime: String?

        public var folderId: String?

        public var jobId: String?

        public var projectId: String?

        public var result: BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appInputConfig != nil {
                map["AppInputConfig"] = self.appInputConfig!
            }
            if self.executionFinishTime != nil {
                map["ExecutionFinishTime"] = self.executionFinishTime!
            }
            if self.executionStartTime != nil {
                map["ExecutionStartTime"] = self.executionStartTime!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppInputConfig"] as? String {
                self.appInputConfig = value
            }
            if let value = dict["ExecutionFinishTime"] as? String {
                self.executionFinishTime = value
            }
            if let value = dict["ExecutionStartTime"] as? String {
                self.executionStartTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["Result"] as? [String: Any?] {
                var model = BatchGetVideoCharacterReplaceJobsResponseBody.JobList.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var jobList: [BatchGetVideoCharacterReplaceJobsResponseBody.JobList]?

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
        if self.jobList != nil {
            var tmp : [Any] = []
            for k in self.jobList! {
                tmp.append(k.toMap())
            }
            map["JobList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobList"] as? [Any?] {
            var tmp : [BatchGetVideoCharacterReplaceJobsResponseBody.JobList] = []
            for v in value {
                if v != nil {
                    var model = BatchGetVideoCharacterReplaceJobsResponseBody.JobList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchGetVideoCharacterReplaceJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetVideoCharacterReplaceJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetVideoCharacterReplaceJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelGenerationJobRequest : Tea.TeaModel {
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

public class CancelGenerationJobResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CancelGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAssetCategoryRequest : Tea.TeaModel {
    public var categoryName: String?

    public var parentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["ParentId"] as? Int64 {
            self.parentId = value
        }
    }
}

public class CreateAssetCategoryResponseBody : Tea.TeaModel {
    public class Category : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryName: String?

        public var level: Int64?

        public var parentId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["ParentId"] as? Int64 {
                self.parentId = value
            }
        }
    }
    public var category: CreateAssetCategoryResponseBody.Category?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.category?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? [String: Any?] {
            var model = CreateAssetCategoryResponseBody.Category()
            model.fromMap(value)
            self.category = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAssetCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAssetCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAssetCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInfiniteCanvasRequest : Tea.TeaModel {
    public var coverUrl: String?

    public var productionId: String?

    public var projectId: String?

    public var title: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoverUrl"] as? String {
            self.coverUrl = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateInfiniteCanvasResponseBody : Tea.TeaModel {
    public var canvasId: String?

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
        if self.canvasId != nil {
            map["CanvasId"] = self.canvasId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanvasId"] as? String {
            self.canvasId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInfiniteCanvasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInfiniteCanvasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInfiniteCanvasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOssUploadRequest : Tea.TeaModel {
    public var bizConfig: String?

    public var credentialType: String?

    public var fileExt: String?

    public var fileType: String?

    public var targetBucket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.credentialType != nil {
            map["CredentialType"] = self.credentialType!
        }
        if self.fileExt != nil {
            map["FileExt"] = self.fileExt!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.targetBucket != nil {
            map["TargetBucket"] = self.targetBucket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["CredentialType"] as? String {
            self.credentialType = value
        }
        if let value = dict["FileExt"] as? String {
            self.fileExt = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["TargetBucket"] as? String {
            self.targetBucket = value
        }
    }
}

public class CreateOssUploadResponseBody : Tea.TeaModel {
    public class UploadCredentials : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucket: String?

        public var expiration: String?

        public var policy: String?

        public var postAccessKeyId: String?

        public var postEndpoint: String?

        public var region: String?

        public var securityToken: String?

        public var signature: String?

        public var signedUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.postAccessKeyId != nil {
                map["PostAccessKeyId"] = self.postAccessKeyId!
            }
            if self.postEndpoint != nil {
                map["PostEndpoint"] = self.postEndpoint!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.signedUrl != nil {
                map["SignedUrl"] = self.signedUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["PostAccessKeyId"] as? String {
                self.postAccessKeyId = value
            }
            if let value = dict["PostEndpoint"] as? String {
                self.postEndpoint = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["SignedUrl"] as? String {
                self.signedUrl = value
            }
        }
    }
    public var objectKey: String?

    public var ossUrl: String?

    public var requestId: String?

    public var uploadCredentials: CreateOssUploadResponseBody.UploadCredentials?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uploadCredentials?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uploadCredentials != nil {
            map["UploadCredentials"] = self.uploadCredentials?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["OssUrl"] as? String {
            self.ossUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UploadCredentials"] as? [String: Any?] {
            var model = CreateOssUploadResponseBody.UploadCredentials()
            model.fromMap(value)
            self.uploadCredentials = model
        }
    }
}

public class CreateOssUploadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOssUploadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOssUploadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var title: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
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

public class CreateUploadMediaRequest : Tea.TeaModel {
    public var credentialType: String?

    public var entityId: String?

    public var fileInfo: String?

    public var mediaId: String?

    public var mediaMetaData: String?

    public var overwrite: Bool?

    public var projectId: String?

    public var storageLocation: String?

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
        if self.credentialType != nil {
            map["CredentialType"] = self.credentialType!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.fileInfo != nil {
            map["FileInfo"] = self.fileInfo!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.mediaMetaData != nil {
            map["MediaMetaData"] = self.mediaMetaData!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.storageLocation != nil {
            map["StorageLocation"] = self.storageLocation!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialType"] as? String {
            self.credentialType = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["FileInfo"] as? String {
            self.fileInfo = value
        }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
        if let value = dict["MediaMetaData"] as? String {
            self.mediaMetaData = value
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["StorageLocation"] as? String {
            self.storageLocation = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateUploadMediaResponseBody : Tea.TeaModel {
    public class UploadCredentials : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucket: String?

        public var expiration: String?

        public var policy: String?

        public var postAccessKeyId: String?

        public var postEndpoint: String?

        public var region: String?

        public var securityToken: String?

        public var signature: String?

        public var signedUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.postAccessKeyId != nil {
                map["PostAccessKeyId"] = self.postAccessKeyId!
            }
            if self.postEndpoint != nil {
                map["PostEndpoint"] = self.postEndpoint!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.signedUrl != nil {
                map["SignedUrl"] = self.signedUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["PostAccessKeyId"] as? String {
                self.postAccessKeyId = value
            }
            if let value = dict["PostEndpoint"] as? String {
                self.postEndpoint = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["SignedUrl"] as? String {
                self.signedUrl = value
            }
        }
    }
    public var fileURL: String?

    public var mediaId: String?

    public var objectKey: String?

    public var requestId: String?

    public var storageLocation: String?

    public var ticketExpiration: String?

    public var uploadCredentials: CreateUploadMediaResponseBody.UploadCredentials?

    public var uploadTicket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uploadCredentials?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileURL != nil {
            map["FileURL"] = self.fileURL!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageLocation != nil {
            map["StorageLocation"] = self.storageLocation!
        }
        if self.ticketExpiration != nil {
            map["TicketExpiration"] = self.ticketExpiration!
        }
        if self.uploadCredentials != nil {
            map["UploadCredentials"] = self.uploadCredentials?.toMap()
        }
        if self.uploadTicket != nil {
            map["UploadTicket"] = self.uploadTicket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileURL"] as? String {
            self.fileURL = value
        }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StorageLocation"] as? String {
            self.storageLocation = value
        }
        if let value = dict["TicketExpiration"] as? String {
            self.ticketExpiration = value
        }
        if let value = dict["UploadCredentials"] as? [String: Any?] {
            var model = CreateUploadMediaResponseBody.UploadCredentials()
            model.fromMap(value)
            self.uploadCredentials = model
        }
        if let value = dict["UploadTicket"] as? String {
            self.uploadTicket = value
        }
    }
}

public class CreateUploadMediaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUploadMediaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUploadMediaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var title: String?

    public var userCountLimit: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userCountLimit != nil {
            map["UserCountLimit"] = self.userCountLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserCountLimit"] as? Int64 {
            self.userCountLimit = value
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public var projectId: String?

    public var requestId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAssetCategoryRequest : Tea.TeaModel {
    public var categoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
    }
}

public class DeleteAssetCategoryResponseBody : Tea.TeaModel {
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

public class DeleteAssetCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAssetCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAssetCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInfiniteCanvasRequest : Tea.TeaModel {
    public var canvasId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canvasId != nil {
            map["CanvasId"] = self.canvasId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanvasId"] as? String {
            self.canvasId = value
        }
    }
}

public class DeleteInfiniteCanvasResponseBody : Tea.TeaModel {
    public var canvasId: String?

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
        if self.canvasId != nil {
            map["CanvasId"] = self.canvasId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanvasId"] as? String {
            self.canvasId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteInfiniteCanvasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInfiniteCanvasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInfiniteCanvasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMediasRequest : Tea.TeaModel {
    public var bizConfig: String?

    public var deletePhysicalFiles: Bool?

    public var inputURLs: String?

    public var mediaIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.deletePhysicalFiles != nil {
            map["DeletePhysicalFiles"] = self.deletePhysicalFiles!
        }
        if self.inputURLs != nil {
            map["InputURLs"] = self.inputURLs!
        }
        if self.mediaIds != nil {
            map["MediaIds"] = self.mediaIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["DeletePhysicalFiles"] as? Bool {
            self.deletePhysicalFiles = value
        }
        if let value = dict["InputURLs"] as? String {
            self.inputURLs = value
        }
        if let value = dict["MediaIds"] as? String {
            self.mediaIds = value
        }
    }
}

public class DeleteMediasResponseBody : Tea.TeaModel {
    public var forbiddenList: [String]?

    public var ignoredList: [String]?

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
        if self.forbiddenList != nil {
            map["ForbiddenList"] = self.forbiddenList!
        }
        if self.ignoredList != nil {
            map["IgnoredList"] = self.ignoredList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForbiddenList"] as? [String] {
            self.forbiddenList = value
        }
        if let value = dict["IgnoredList"] as? [String] {
            self.ignoredList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteMediasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMediasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMediasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
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

public class GenerateYikeLoginTokenRequest : Tea.TeaModel {
    public var autoCreateProduction: String?

    public var expires: String?

    public var nickName: String?

    public var productionAuth: String?

    public var subUserCredit: String?

    public var tenant: String?

    public var userName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateProduction != nil {
            map["AutoCreateProduction"] = self.autoCreateProduction!
        }
        if self.expires != nil {
            map["Expires"] = self.expires!
        }
        if self.nickName != nil {
            map["NickName"] = self.nickName!
        }
        if self.productionAuth != nil {
            map["ProductionAuth"] = self.productionAuth!
        }
        if self.subUserCredit != nil {
            map["SubUserCredit"] = self.subUserCredit!
        }
        if self.tenant != nil {
            map["Tenant"] = self.tenant!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateProduction"] as? String {
            self.autoCreateProduction = value
        }
        if let value = dict["Expires"] as? String {
            self.expires = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
        }
        if let value = dict["ProductionAuth"] as? String {
            self.productionAuth = value
        }
        if let value = dict["SubUserCredit"] as? String {
            self.subUserCredit = value
        }
        if let value = dict["Tenant"] as? String {
            self.tenant = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GenerateYikeLoginTokenResponseBody : Tea.TeaModel {
    public var expiresAt: String?

    public var requestId: String?

    public var token: String?

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
        if self.expiresAt != nil {
            map["ExpiresAt"] = self.expiresAt!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpiresAt"] as? String {
            self.expiresAt = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GenerateYikeLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateYikeLoginTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateYikeLoginTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentJobRequest : Tea.TeaModel {
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

public class GetAgentJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public var jobId: String?

        public var output: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var job: GetAgentJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetAgentJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAgentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAgentJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAssetCategoryRequest : Tea.TeaModel {
    public var categoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
    }
}

public class GetAssetCategoryResponseBody : Tea.TeaModel {
    public class Category : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryName: String?

        public var level: Int64?

        public var parentId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["ParentId"] as? Int64 {
                self.parentId = value
            }
        }
    }
    public class SubCategories : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryName: String?

        public var level: Int64?

        public var parentId: Int64?

        public var subTotal: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.subTotal != nil {
                map["SubTotal"] = self.subTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["ParentId"] as? Int64 {
                self.parentId = value
            }
            if let value = dict["SubTotal"] as? Int64 {
                self.subTotal = value
            }
        }
    }
    public var category: GetAssetCategoryResponseBody.Category?

    public var requestId: String?

    public var subCategories: [GetAssetCategoryResponseBody.SubCategories]?

    public var subTotal: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.category?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCategories != nil {
            var tmp : [Any] = []
            for k in self.subCategories! {
                tmp.append(k.toMap())
            }
            map["SubCategories"] = tmp
        }
        if self.subTotal != nil {
            map["SubTotal"] = self.subTotal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? [String: Any?] {
            var model = GetAssetCategoryResponseBody.Category()
            model.fromMap(value)
            self.category = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubCategories"] as? [Any?] {
            var tmp : [GetAssetCategoryResponseBody.SubCategories] = []
            for v in value {
                if v != nil {
                    var model = GetAssetCategoryResponseBody.SubCategories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subCategories = tmp
        }
        if let value = dict["SubTotal"] as? Int64 {
            self.subTotal = value
        }
    }
}

public class GetAssetCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAssetCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAssetCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageGenerationJobRequest : Tea.TeaModel {
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

public class GetImageGenerationJobResponseBody : Tea.TeaModel {
    public class ImageGenerationJob : Tea.TeaModel {
        public var aspectRatio: String?

        public var errorMessage: String?

        public var input: String?

        public var jobId: String?

        public var jobParameters: String?

        public var jobType: String?

        public var model: String?

        public var n: String?

        public var output: String?

        public var resolution: String?

        public var scene: String?

        public var status: String?

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
            if self.aspectRatio != nil {
                map["AspectRatio"] = self.aspectRatio!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobParameters != nil {
                map["JobParameters"] = self.jobParameters!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.n != nil {
                map["N"] = self.n!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AspectRatio"] as? String {
                self.aspectRatio = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Input"] as? String {
                self.input = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobParameters"] as? String {
                self.jobParameters = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["N"] as? String {
                self.n = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public var imageGenerationJob: GetImageGenerationJobResponseBody.ImageGenerationJob?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageGenerationJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageGenerationJob != nil {
            map["ImageGenerationJob"] = self.imageGenerationJob?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageGenerationJob"] as? [String: Any?] {
            var model = GetImageGenerationJobResponseBody.ImageGenerationJob()
            model.fromMap(value)
            self.imageGenerationJob = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetImageGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetImageGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInfiniteCanvasRequest : Tea.TeaModel {
    public var canvasId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canvasId != nil {
            map["CanvasId"] = self.canvasId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanvasId"] as? String {
            self.canvasId = value
        }
    }
}

public class GetInfiniteCanvasResponseBody : Tea.TeaModel {
    public class InfiniteCanvas : Tea.TeaModel {
        public var canvasId: String?

        public var coverUrl: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var thumbnail: String?

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
            if self.canvasId != nil {
                map["CanvasId"] = self.canvasId!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanvasId"] as? String {
                self.canvasId = value
            }
            if let value = dict["CoverUrl"] as? String {
                self.coverUrl = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Thumbnail"] as? String {
                self.thumbnail = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var infiniteCanvas: GetInfiniteCanvasResponseBody.InfiniteCanvas?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.infiniteCanvas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.infiniteCanvas != nil {
            map["InfiniteCanvas"] = self.infiniteCanvas?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InfiniteCanvas"] as? [String: Any?] {
            var model = GetInfiniteCanvasResponseBody.InfiniteCanvas()
            model.fromMap(value)
            self.infiniteCanvas = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInfiniteCanvasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInfiniteCanvasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInfiniteCanvasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMediaRequest : Tea.TeaModel {
    public var authTimeout: Int64?

    public var bizConfig: String?

    public var inputURL: String?

    public var mediaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authTimeout != nil {
            map["AuthTimeout"] = self.authTimeout!
        }
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.inputURL != nil {
            map["InputURL"] = self.inputURL!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthTimeout"] as? Int64 {
            self.authTimeout = value
        }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["InputURL"] as? String {
            self.inputURL = value
        }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
    }
}

public class GetMediaResponseBody : Tea.TeaModel {
    public class MediaInfo : Tea.TeaModel {
        public class FileInfoList : Tea.TeaModel {
            public class AudioStreamInfoList : Tea.TeaModel {
                public var bitrate: String?

                public var channelLayout: String?

                public var channels: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var fps: String?

                public var index: String?

                public var lang: String?

                public var numFrames: String?

                public var profile: String?

                public var sampleFmt: String?

                public var sampleRate: String?

                public var startTime: String?

                public var timebase: String?

                public override init() {
                    super.init()
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
                    if self.fps != nil {
                        map["Fps"] = self.fps!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.numFrames != nil {
                        map["NumFrames"] = self.numFrames!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.sampleFmt != nil {
                        map["SampleFmt"] = self.sampleFmt!
                    }
                    if self.sampleRate != nil {
                        map["SampleRate"] = self.sampleRate!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["ChannelLayout"] as? String {
                        self.channelLayout = value
                    }
                    if let value = dict["Channels"] as? String {
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
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Fps"] as? String {
                        self.fps = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["NumFrames"] as? String {
                        self.numFrames = value
                    }
                    if let value = dict["Profile"] as? String {
                        self.profile = value
                    }
                    if let value = dict["SampleFmt"] as? String {
                        self.sampleFmt = value
                    }
                    if let value = dict["SampleRate"] as? String {
                        self.sampleRate = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                }
            }
            public class FileBasicInfo : Tea.TeaModel {
                public var bitrate: String?

                public var createTime: String?

                public var duration: String?

                public var fileName: String?

                public var fileSize: String?

                public var fileStatus: String?

                public var fileType: String?

                public var fileUrl: String?

                public var formatName: String?

                public var height: String?

                public var modifiedTime: String?

                public var region: String?

                public var width: String?

                public override init() {
                    super.init()
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
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileStatus != nil {
                        map["FileStatus"] = self.fileStatus!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.formatName != nil {
                        map["FormatName"] = self.formatName!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? String {
                        self.fileSize = value
                    }
                    if let value = dict["FileStatus"] as? String {
                        self.fileStatus = value
                    }
                    if let value = dict["FileType"] as? String {
                        self.fileType = value
                    }
                    if let value = dict["FileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["FormatName"] as? String {
                        self.formatName = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["ModifiedTime"] as? String {
                        self.modifiedTime = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public class SubtitleStreamInfoList : Tea.TeaModel {
                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var index: String?

                public var lang: String?

                public var startTime: String?

                public var timebase: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
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
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                }
            }
            public class VideoStreamInfoList : Tea.TeaModel {
                public var avgFPS: String?

                public var bitrate: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var dar: String?

                public var duration: String?

                public var fps: String?

                public var hasBFrames: String?

                public var height: String?

                public var index: String?

                public var lang: String?

                public var level: String?

                public var nbFrames: String?

                public var numFrames: String?

                public var pixFmt: String?

                public var profile: String?

                public var rotate: String?

                public var sar: String?

                public var startTime: String?

                public var timebase: String?

                public var width: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avgFPS != nil {
                        map["AvgFPS"] = self.avgFPS!
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
                    if self.dar != nil {
                        map["Dar"] = self.dar!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fps != nil {
                        map["Fps"] = self.fps!
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
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.nbFrames != nil {
                        map["Nb_frames"] = self.nbFrames!
                    }
                    if self.numFrames != nil {
                        map["NumFrames"] = self.numFrames!
                    }
                    if self.pixFmt != nil {
                        map["PixFmt"] = self.pixFmt!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.rotate != nil {
                        map["Rotate"] = self.rotate!
                    }
                    if self.sar != nil {
                        map["Sar"] = self.sar!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvgFPS"] as? String {
                        self.avgFPS = value
                    }
                    if let value = dict["Bitrate"] as? String {
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
                    if let value = dict["Dar"] as? String {
                        self.dar = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Fps"] as? String {
                        self.fps = value
                    }
                    if let value = dict["HasBFrames"] as? String {
                        self.hasBFrames = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                    if let value = dict["Nb_frames"] as? String {
                        self.nbFrames = value
                    }
                    if let value = dict["NumFrames"] as? String {
                        self.numFrames = value
                    }
                    if let value = dict["PixFmt"] as? String {
                        self.pixFmt = value
                    }
                    if let value = dict["Profile"] as? String {
                        self.profile = value
                    }
                    if let value = dict["Rotate"] as? String {
                        self.rotate = value
                    }
                    if let value = dict["Sar"] as? String {
                        self.sar = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public var audioStreamInfoList: [GetMediaResponseBody.MediaInfo.FileInfoList.AudioStreamInfoList]?

            public var fileBasicInfo: GetMediaResponseBody.MediaInfo.FileInfoList.FileBasicInfo?

            public var subtitleStreamInfoList: [GetMediaResponseBody.MediaInfo.FileInfoList.SubtitleStreamInfoList]?

            public var videoStreamInfoList: [GetMediaResponseBody.MediaInfo.FileInfoList.VideoStreamInfoList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fileBasicInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.audioStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AudioStreamInfoList"] = tmp
                }
                if self.fileBasicInfo != nil {
                    map["FileBasicInfo"] = self.fileBasicInfo?.toMap()
                }
                if self.subtitleStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subtitleStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["SubtitleStreamInfoList"] = tmp
                }
                if self.videoStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.videoStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["VideoStreamInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioStreamInfoList"] as? [Any?] {
                    var tmp : [GetMediaResponseBody.MediaInfo.FileInfoList.AudioStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMediaResponseBody.MediaInfo.FileInfoList.AudioStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.audioStreamInfoList = tmp
                }
                if let value = dict["FileBasicInfo"] as? [String: Any?] {
                    var model = GetMediaResponseBody.MediaInfo.FileInfoList.FileBasicInfo()
                    model.fromMap(value)
                    self.fileBasicInfo = model
                }
                if let value = dict["SubtitleStreamInfoList"] as? [Any?] {
                    var tmp : [GetMediaResponseBody.MediaInfo.FileInfoList.SubtitleStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMediaResponseBody.MediaInfo.FileInfoList.SubtitleStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subtitleStreamInfoList = tmp
                }
                if let value = dict["VideoStreamInfoList"] as? [Any?] {
                    var tmp : [GetMediaResponseBody.MediaInfo.FileInfoList.VideoStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMediaResponseBody.MediaInfo.FileInfoList.VideoStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.videoStreamInfoList = tmp
                }
            }
        }
        public class MediaBasicInfo : Tea.TeaModel {
            public var businessType: String?

            public var categoryId: Int64?

            public var categoryName: String?

            public var coverURL: String?

            public var createTime: String?

            public var description_: String?

            public var entityId: String?

            public var inputURL: String?

            public var mediaId: String?

            public var mediaTags: String?

            public var mediaType: String?

            public var modifiedTime: String?

            public var snapshots: String?

            public var source: String?

            public var spriteImages: String?

            public var status: String?

            public var title: String?

            public var uploadSource: String?

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
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.coverURL != nil {
                    map["CoverURL"] = self.coverURL!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.inputURL != nil {
                    map["InputURL"] = self.inputURL!
                }
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.mediaTags != nil {
                    map["MediaTags"] = self.mediaTags!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.snapshots != nil {
                    map["Snapshots"] = self.snapshots!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.spriteImages != nil {
                    map["SpriteImages"] = self.spriteImages!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.uploadSource != nil {
                    map["UploadSource"] = self.uploadSource!
                }
                if self.userData != nil {
                    map["UserData"] = self.userData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BusinessType"] as? String {
                    self.businessType = value
                }
                if let value = dict["CategoryId"] as? Int64 {
                    self.categoryId = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["CoverURL"] as? String {
                    self.coverURL = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["InputURL"] as? String {
                    self.inputURL = value
                }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["MediaTags"] as? String {
                    self.mediaTags = value
                }
                if let value = dict["MediaType"] as? String {
                    self.mediaType = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["Snapshots"] as? String {
                    self.snapshots = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SpriteImages"] as? String {
                    self.spriteImages = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["UploadSource"] as? String {
                    self.uploadSource = value
                }
                if let value = dict["UserData"] as? String {
                    self.userData = value
                }
            }
        }
        public class MediaDynamicInfo : Tea.TeaModel {
            public class DynamicMetaData : Tea.TeaModel {
                public var data: String?

                public var entityId: String?

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
                    if self.data != nil {
                        map["Data"] = self.data!
                    }
                    if self.entityId != nil {
                        map["EntityId"] = self.entityId!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? String {
                        self.data = value
                    }
                    if let value = dict["EntityId"] as? String {
                        self.entityId = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var dynamicMetaData: GetMediaResponseBody.MediaInfo.MediaDynamicInfo.DynamicMetaData?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dynamicMetaData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dynamicMetaData != nil {
                    map["DynamicMetaData"] = self.dynamicMetaData?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DynamicMetaData"] as? [String: Any?] {
                    var model = GetMediaResponseBody.MediaInfo.MediaDynamicInfo.DynamicMetaData()
                    model.fromMap(value)
                    self.dynamicMetaData = model
                }
            }
        }
        public var fileInfoList: [GetMediaResponseBody.MediaInfo.FileInfoList]?

        public var mediaBasicInfo: GetMediaResponseBody.MediaInfo.MediaBasicInfo?

        public var mediaDynamicInfo: GetMediaResponseBody.MediaInfo.MediaDynamicInfo?

        public var mediaId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mediaBasicInfo?.validate()
            try self.mediaDynamicInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileInfoList != nil {
                var tmp : [Any] = []
                for k in self.fileInfoList! {
                    tmp.append(k.toMap())
                }
                map["FileInfoList"] = tmp
            }
            if self.mediaBasicInfo != nil {
                map["MediaBasicInfo"] = self.mediaBasicInfo?.toMap()
            }
            if self.mediaDynamicInfo != nil {
                map["MediaDynamicInfo"] = self.mediaDynamicInfo?.toMap()
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileInfoList"] as? [Any?] {
                var tmp : [GetMediaResponseBody.MediaInfo.FileInfoList] = []
                for v in value {
                    if v != nil {
                        var model = GetMediaResponseBody.MediaInfo.FileInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileInfoList = tmp
            }
            if let value = dict["MediaBasicInfo"] as? [String: Any?] {
                var model = GetMediaResponseBody.MediaInfo.MediaBasicInfo()
                model.fromMap(value)
                self.mediaBasicInfo = model
            }
            if let value = dict["MediaDynamicInfo"] as? [String: Any?] {
                var model = GetMediaResponseBody.MediaInfo.MediaDynamicInfo()
                model.fromMap(value)
                self.mediaDynamicInfo = model
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
        }
    }
    public var mediaInfo: GetMediaResponseBody.MediaInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mediaInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mediaInfo != nil {
            map["MediaInfo"] = self.mediaInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaInfo"] as? [String: Any?] {
            var model = GetMediaResponseBody.MediaInfo()
            model.fromMap(value)
            self.mediaInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMediaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMediaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMediaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMediaComprehensionJobRequest : Tea.TeaModel {
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

public class GetMediaComprehensionJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var mediaIds: [String]?

        public var result: String?

        public var status: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.mediaIds != nil {
                map["MediaIds"] = self.mediaIds!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
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
            if let value = dict["MediaIds"] as? [String] {
                self.mediaIds = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public class MediaComprehensionJob : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var mediaId: String?

        public var result: String?

        public var state: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
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
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public var job: GetMediaComprehensionJobResponseBody.Job?

    public var mediaComprehensionJob: GetMediaComprehensionJobResponseBody.MediaComprehensionJob?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
        try self.mediaComprehensionJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.mediaComprehensionJob != nil {
            map["MediaComprehensionJob"] = self.mediaComprehensionJob?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetMediaComprehensionJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["MediaComprehensionJob"] as? [String: Any?] {
            var model = GetMediaComprehensionJobResponseBody.MediaComprehensionJob()
            model.fromMap(value)
            self.mediaComprehensionJob = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMediaComprehensionJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMediaComprehensionJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMediaComprehensionJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var auth: String?

        public var coverUrl: String?

        public var createTime: String?

        public var createUserName: String?

        public var description_: String?

        public var projectId: String?

        public var title: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth != nil {
                map["Auth"] = self.auth!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Auth"] as? String {
                self.auth = value
            }
            if let value = dict["CoverUrl"] as? String {
                self.coverUrl = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var project: GetProjectResponseBody.Project?

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
            var model = GetProjectResponseBody.Project()
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

public class GetRemakeScriptJobRequest : Tea.TeaModel {
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

public class GetRemakeScriptJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var result: String?

        public var status: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
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
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public var job: GetRemakeScriptJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetRemakeScriptJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRemakeScriptJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRemakeScriptJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRemakeScriptJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoCharacterReplaceJobRequest : Tea.TeaModel {
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

public class GetVideoCharacterReplaceJobResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AudioResult : Tea.TeaModel {
            public var mediaId: String?

            public var outputUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.outputUrl != nil {
                    map["OutputUrl"] = self.outputUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["OutputUrl"] as? String {
                    self.outputUrl = value
                }
            }
        }
        public class ImageResult : Tea.TeaModel {
            public var mediaId: String?

            public var outputUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.outputUrl != nil {
                    map["OutputUrl"] = self.outputUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["OutputUrl"] as? String {
                    self.outputUrl = value
                }
            }
        }
        public class VideoResult : Tea.TeaModel {
            public var mediaId: String?

            public var outputUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.outputUrl != nil {
                    map["OutputUrl"] = self.outputUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["OutputUrl"] as? String {
                    self.outputUrl = value
                }
            }
        }
        public var audioResult: [GetVideoCharacterReplaceJobResponseBody.Result.AudioResult]?

        public var imageResult: [GetVideoCharacterReplaceJobResponseBody.Result.ImageResult]?

        public var videoResult: [GetVideoCharacterReplaceJobResponseBody.Result.VideoResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioResult != nil {
                var tmp : [Any] = []
                for k in self.audioResult! {
                    tmp.append(k.toMap())
                }
                map["AudioResult"] = tmp
            }
            if self.imageResult != nil {
                var tmp : [Any] = []
                for k in self.imageResult! {
                    tmp.append(k.toMap())
                }
                map["ImageResult"] = tmp
            }
            if self.videoResult != nil {
                var tmp : [Any] = []
                for k in self.videoResult! {
                    tmp.append(k.toMap())
                }
                map["VideoResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AudioResult"] as? [Any?] {
                var tmp : [GetVideoCharacterReplaceJobResponseBody.Result.AudioResult] = []
                for v in value {
                    if v != nil {
                        var model = GetVideoCharacterReplaceJobResponseBody.Result.AudioResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.audioResult = tmp
            }
            if let value = dict["ImageResult"] as? [Any?] {
                var tmp : [GetVideoCharacterReplaceJobResponseBody.Result.ImageResult] = []
                for v in value {
                    if v != nil {
                        var model = GetVideoCharacterReplaceJobResponseBody.Result.ImageResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.imageResult = tmp
            }
            if let value = dict["VideoResult"] as? [Any?] {
                var tmp : [GetVideoCharacterReplaceJobResponseBody.Result.VideoResult] = []
                for v in value {
                    if v != nil {
                        var model = GetVideoCharacterReplaceJobResponseBody.Result.VideoResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.videoResult = tmp
            }
        }
    }
    public var appId: String?

    public var appParams: String?

    public var executionFinishTime: String?

    public var executionStartTime: String?

    public var folderId: String?

    public var jobId: String?

    public var projectId: String?

    public var requestId: String?

    public var result: GetVideoCharacterReplaceJobResponseBody.Result?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appParams != nil {
            map["AppParams"] = self.appParams!
        }
        if self.executionFinishTime != nil {
            map["ExecutionFinishTime"] = self.executionFinishTime!
        }
        if self.executionStartTime != nil {
            map["ExecutionStartTime"] = self.executionStartTime!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppParams"] as? String {
            self.appParams = value
        }
        if let value = dict["ExecutionFinishTime"] as? String {
            self.executionFinishTime = value
        }
        if let value = dict["ExecutionStartTime"] as? String {
            self.executionStartTime = value
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetVideoCharacterReplaceJobResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetVideoCharacterReplaceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoCharacterReplaceJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoCharacterReplaceJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoCreativeGenerationJobRequest : Tea.TeaModel {
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

public class GetVideoCreativeGenerationJobResponseBody : Tea.TeaModel {
    public class JobResult : Tea.TeaModel {
        public var editingProjectId: String?

        public var mediaId: String?

        public var outputLanguage: String?

        public var outputUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.editingProjectId != nil {
                map["EditingProjectId"] = self.editingProjectId!
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.outputLanguage != nil {
                map["OutputLanguage"] = self.outputLanguage!
            }
            if self.outputUrl != nil {
                map["OutputUrl"] = self.outputUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EditingProjectId"] as? String {
                self.editingProjectId = value
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
            if let value = dict["OutputLanguage"] as? String {
                self.outputLanguage = value
            }
            if let value = dict["OutputUrl"] as? String {
                self.outputUrl = value
            }
        }
    }
    public var createTime: String?

    public var errorCode: String?

    public var finishTime: String?

    public var jobId: String?

    public var jobResult: [GetVideoCreativeGenerationJobResponseBody.JobResult]?

    public var jobStatus: String?

    public var requestId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.finishTime != nil {
            map["FinishTime"] = self.finishTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobResult != nil {
            var tmp : [Any] = []
            for k in self.jobResult! {
                tmp.append(k.toMap())
            }
            map["JobResult"] = tmp
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["FinishTime"] as? String {
            self.finishTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobResult"] as? [Any?] {
            var tmp : [GetVideoCreativeGenerationJobResponseBody.JobResult] = []
            for v in value {
                if v != nil {
                    var model = GetVideoCreativeGenerationJobResponseBody.JobResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobResult = tmp
        }
        if let value = dict["JobStatus"] as? String {
            self.jobStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GetVideoCreativeGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoCreativeGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoCreativeGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoDetextJobRequest : Tea.TeaModel {
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

public class GetVideoDetextJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var input: String?

        public var jobId: String?

        public var jobParameters: String?

        public var jobType: String?

        public var output: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobParameters != nil {
                map["JobParameters"] = self.jobParameters!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if let value = dict["Input"] as? String {
                self.input = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobParameters"] as? String {
                self.jobParameters = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var job: GetVideoDetextJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetVideoDetextJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVideoDetextJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoDetextJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoDetextJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoGenerationJobRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetVideoGenerationJobResponseBody : Tea.TeaModel {
    public class VideoGenerationJob : Tea.TeaModel {
        public var aspectRatio: String?

        public var duration: String?

        public var errorMessage: String?

        public var input: String?

        public var jobId: String?

        public var jobParameters: String?

        public var jobType: String?

        public var model: String?

        public var n: Int32?

        public var output: String?

        public var resolution: String?

        public var scene: String?

        public var status: String?

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
            if self.aspectRatio != nil {
                map["AspectRatio"] = self.aspectRatio!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobParameters != nil {
                map["JobParameters"] = self.jobParameters!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.n != nil {
                map["N"] = self.n!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AspectRatio"] as? String {
                self.aspectRatio = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Input"] as? String {
                self.input = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobParameters"] as? String {
                self.jobParameters = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["N"] as? Int32 {
                self.n = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public var requestId: String?

    public var videoGenerationJob: GetVideoGenerationJobResponseBody.VideoGenerationJob?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.videoGenerationJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.videoGenerationJob != nil {
            map["VideoGenerationJob"] = self.videoGenerationJob?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VideoGenerationJob"] as? [String: Any?] {
            var model = GetVideoGenerationJobResponseBody.VideoGenerationJob()
            model.fromMap(value)
            self.videoGenerationJob = model
        }
    }
}

public class GetVideoGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoRemakeJobRequest : Tea.TeaModel {
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

public class GetVideoRemakeJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public class JobResult : Tea.TeaModel {
            public var aiResult: String?

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
                if self.aiResult != nil {
                    map["AiResult"] = self.aiResult!
                }
                if self.script != nil {
                    map["Script"] = self.script!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AiResult"] as? String {
                    self.aiResult = value
                }
                if let value = dict["Script"] as? String {
                    self.script = value
                }
            }
        }
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var jobResult: GetVideoRemakeJobResponseBody.Job.JobResult?

        public var mediaIds: [String]?

        public var status: String?

        public var userData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobResult != nil {
                map["JobResult"] = self.jobResult?.toMap()
            }
            if self.mediaIds != nil {
                map["MediaIds"] = self.mediaIds!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
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
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobResult"] as? [String: Any?] {
                var model = GetVideoRemakeJobResponseBody.Job.JobResult()
                model.fromMap(value)
                self.jobResult = model
            }
            if let value = dict["MediaIds"] as? [String] {
                self.mediaIds = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public var job: GetVideoRemakeJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetVideoRemakeJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVideoRemakeJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoRemakeJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoRemakeJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoRenderJobRequest : Tea.TeaModel {
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

public class GetVideoRenderJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public var editingProjectId: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var language: String?

        public var result: String?

        public var status: String?

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
            if self.editingProjectId != nil {
                map["EditingProjectId"] = self.editingProjectId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EditingProjectId"] as? String {
                self.editingProjectId = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserData"] as? String {
                self.userData = value
            }
        }
    }
    public var job: GetVideoRenderJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetVideoRenderJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVideoRenderJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoRenderJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoRenderJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoTranslationJobRequest : Tea.TeaModel {
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

public class GetVideoTranslationJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public var duration: Double?

        public var editingProjectId: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var input: String?

        public var jobId: String?

        public var jobParameters: String?

        public var jobType: String?

        public var output: String?

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
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.editingProjectId != nil {
                map["EditingProjectId"] = self.editingProjectId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobParameters != nil {
                map["JobParameters"] = self.jobParameters!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Double {
                self.duration = value
            }
            if let value = dict["EditingProjectId"] as? String {
                self.editingProjectId = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Input"] as? String {
                self.input = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobParameters"] as? String {
                self.jobParameters = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var job: GetVideoTranslationJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["Job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Job"] as? [String: Any?] {
            var model = GetVideoTranslationJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVideoTranslationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoTranslationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoTranslationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeAccountCreditRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetYikeAccountCreditResponseBody : Tea.TeaModel {
    public class CreditInfo : Tea.TeaModel {
        public var grantedCreditQuota: Double?

        public var grantedCreditQuotaUsage: Double?

        public var packCreditQuota: Double?

        public var packCreditQuotaUsage: Double?

        public var resourceCreditQuota: Double?

        public var resourceCreditQuotaUsage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.grantedCreditQuota != nil {
                map["GrantedCreditQuota"] = self.grantedCreditQuota!
            }
            if self.grantedCreditQuotaUsage != nil {
                map["GrantedCreditQuotaUsage"] = self.grantedCreditQuotaUsage!
            }
            if self.packCreditQuota != nil {
                map["PackCreditQuota"] = self.packCreditQuota!
            }
            if self.packCreditQuotaUsage != nil {
                map["PackCreditQuotaUsage"] = self.packCreditQuotaUsage!
            }
            if self.resourceCreditQuota != nil {
                map["ResourceCreditQuota"] = self.resourceCreditQuota!
            }
            if self.resourceCreditQuotaUsage != nil {
                map["ResourceCreditQuotaUsage"] = self.resourceCreditQuotaUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GrantedCreditQuota"] as? Double {
                self.grantedCreditQuota = value
            }
            if let value = dict["GrantedCreditQuotaUsage"] as? Double {
                self.grantedCreditQuotaUsage = value
            }
            if let value = dict["PackCreditQuota"] as? Double {
                self.packCreditQuota = value
            }
            if let value = dict["PackCreditQuotaUsage"] as? Double {
                self.packCreditQuotaUsage = value
            }
            if let value = dict["ResourceCreditQuota"] as? Double {
                self.resourceCreditQuota = value
            }
            if let value = dict["ResourceCreditQuotaUsage"] as? Double {
                self.resourceCreditQuotaUsage = value
            }
        }
    }
    public class MembershipInfo : Tea.TeaModel {
        public var endTime: String?

        public var membership: String?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.membership != nil {
                map["Membership"] = self.membership!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Membership"] as? String {
                self.membership = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var creditInfo: GetYikeAccountCreditResponseBody.CreditInfo?

    public var membershipInfo: GetYikeAccountCreditResponseBody.MembershipInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creditInfo?.validate()
        try self.membershipInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creditInfo != nil {
            map["CreditInfo"] = self.creditInfo?.toMap()
        }
        if self.membershipInfo != nil {
            map["MembershipInfo"] = self.membershipInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreditInfo"] as? [String: Any?] {
            var model = GetYikeAccountCreditResponseBody.CreditInfo()
            model.fromMap(value)
            self.creditInfo = model
        }
        if let value = dict["MembershipInfo"] as? [String: Any?] {
            var model = GetYikeAccountCreditResponseBody.MembershipInfo()
            model.fromMap(value)
            self.membershipInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetYikeAccountCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeAccountCreditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeAccountCreditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeJobCreditRequest : Tea.TeaModel {
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

public class GetYikeJobCreditResponseBody : Tea.TeaModel {
    public var creditStatus: String?

    public var jobCreditCost: Double?

    public var jobId: String?

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
        if self.creditStatus != nil {
            map["CreditStatus"] = self.creditStatus!
        }
        if self.jobCreditCost != nil {
            map["JobCreditCost"] = self.jobCreditCost!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreditStatus"] as? String {
            self.creditStatus = value
        }
        if let value = dict["JobCreditCost"] as? Double {
            self.jobCreditCost = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetYikeJobCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeJobCreditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeJobCreditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportMediaRequest : Tea.TeaModel {
    public var bizConfig: String?

    public var categoryId: Int64?

    public var coverURL: String?

    public var description_: String?

    public var dynamicMetaData: String?

    public var entityId: String?

    public var importSource: String?

    public var inputURL: String?

    public var mediaTags: String?

    public var mediaType: String?

    public var overwrite: Bool?

    public var projectId: String?

    public var registerConfig: String?

    public var title: String?

    public var userData: String?

    public var yikeAssetConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.coverURL != nil {
            map["CoverURL"] = self.coverURL!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dynamicMetaData != nil {
            map["DynamicMetaData"] = self.dynamicMetaData!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.importSource != nil {
            map["ImportSource"] = self.importSource!
        }
        if self.inputURL != nil {
            map["InputURL"] = self.inputURL!
        }
        if self.mediaTags != nil {
            map["MediaTags"] = self.mediaTags!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.registerConfig != nil {
            map["RegisterConfig"] = self.registerConfig!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.yikeAssetConfig != nil {
            map["YikeAssetConfig"] = self.yikeAssetConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["CoverURL"] as? String {
            self.coverURL = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DynamicMetaData"] as? String {
            self.dynamicMetaData = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["ImportSource"] as? String {
            self.importSource = value
        }
        if let value = dict["InputURL"] as? String {
            self.inputURL = value
        }
        if let value = dict["MediaTags"] as? String {
            self.mediaTags = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["RegisterConfig"] as? String {
            self.registerConfig = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["YikeAssetConfig"] as? String {
            self.yikeAssetConfig = value
        }
    }
}

public class ImportMediaResponseBody : Tea.TeaModel {
    public var mediaId: String?

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
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImportMediaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportMediaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportMediaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAssetCategoriesRequest : Tea.TeaModel {
    public var pageNo: Int32?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAssetCategoriesResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryName: String?

        public var level: String?

        public var parentId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["ParentId"] as? Int64 {
                self.parentId = value
            }
        }
    }
    public var categories: [ListAssetCategoriesResponseBody.Categories]?

    public var requestId: String?

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
        if self.categories != nil {
            var tmp : [Any] = []
            for k in self.categories! {
                tmp.append(k.toMap())
            }
            map["Categories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? [Any?] {
            var tmp : [ListAssetCategoriesResponseBody.Categories] = []
            for v in value {
                if v != nil {
                    var model = ListAssetCategoriesResponseBody.Categories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAssetCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAssetCategoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAssetCategoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInfiniteCanvasesRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var productionId: String?

    public var sortBy: String?

    public var sortOrder: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListInfiniteCanvasesResponseBody : Tea.TeaModel {
    public class CanvasList : Tea.TeaModel {
        public var canvasId: String?

        public var coverUrl: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var thumbnail: String?

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
            if self.canvasId != nil {
                map["CanvasId"] = self.canvasId!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanvasId"] as? String {
                self.canvasId = value
            }
            if let value = dict["CoverUrl"] as? String {
                self.coverUrl = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Thumbnail"] as? String {
                self.thumbnail = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var canvasList: [ListInfiniteCanvasesResponseBody.CanvasList]?

    public var pageNo: Int32?

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
        if self.canvasList != nil {
            var tmp : [Any] = []
            for k in self.canvasList! {
                tmp.append(k.toMap())
            }
            map["CanvasList"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["CanvasList"] as? [Any?] {
            var tmp : [ListInfiniteCanvasesResponseBody.CanvasList] = []
            for v in value {
                if v != nil {
                    var model = ListInfiniteCanvasesResponseBody.CanvasList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.canvasList = tmp
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
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

public class ListInfiniteCanvasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInfiniteCanvasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInfiniteCanvasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMediaFoldersRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var productionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
    }
}

public class ListMediaFoldersResponseBody : Tea.TeaModel {
    public class FolderList : Tea.TeaModel {
        public var createTime: String?

        public var folderId: String?

        public var folderName: String?

        public var isDefault: Bool?

        public var modifiedTime: String?

        public var productionId: String?

        public override init() {
            super.init()
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
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.folderName != nil {
                map["FolderName"] = self.folderName!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.productionId != nil {
                map["ProductionId"] = self.productionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["FolderName"] as? String {
                self.folderName = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["ProductionId"] as? String {
                self.productionId = value
            }
        }
    }
    public var folderList: [ListMediaFoldersResponseBody.FolderList]?

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
        if self.folderList != nil {
            var tmp : [Any] = []
            for k in self.folderList! {
                tmp.append(k.toMap())
            }
            map["FolderList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderList"] as? [Any?] {
            var tmp : [ListMediaFoldersResponseBody.FolderList] = []
            for v in value {
                if v != nil {
                    var model = ListMediaFoldersResponseBody.FolderList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.folderList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMediaFoldersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMediaFoldersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMediaFoldersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class ProjectList : Tea.TeaModel {
        public var auth: String?

        public var coverUrl: String?

        public var createTime: String?

        public var createUserName: String?

        public var description_: String?

        public var projectId: String?

        public var title: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth != nil {
                map["Auth"] = self.auth!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Auth"] as? String {
                self.auth = value
            }
            if let value = dict["CoverUrl"] as? String {
                self.coverUrl = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var projectList: [ListProjectsResponseBody.ProjectList]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectList != nil {
            var tmp : [Any] = []
            for k in self.projectList! {
                tmp.append(k.toMap())
            }
            map["ProjectList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["ProjectList"] as? [Any?] {
            var tmp : [ListProjectsResponseBody.ProjectList] = []
            for v in value {
                if v != nil {
                    var model = ListProjectsResponseBody.ProjectList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.projectList = tmp
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

public class ListWorkspacesRequest : Tea.TeaModel {
    public var pageNo: Int32?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class WorkspaceList : Tea.TeaModel {
        public var code: String?

        public var createTime: String?

        public var defaultProjectId: String?

        public var status: String?

        public var title: String?

        public var userCount: String?

        public var workspaceId: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultProjectId != nil {
                map["DefaultProjectId"] = self.defaultProjectId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultProjectId"] as? String {
                self.defaultProjectId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["UserCount"] as? String {
                self.userCount = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var workspaceList: [ListWorkspacesResponseBody.WorkspaceList]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workspaceList != nil {
            var tmp : [Any] = []
            for k in self.workspaceList! {
                tmp.append(k.toMap())
            }
            map["WorkspaceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["WorkspaceList"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.WorkspaceList] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.WorkspaceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workspaceList = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkspacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PrecheckVideoCharacterReplaceJobRequest : Tea.TeaModel {
    public var appId: String?

    public var appParams: String?

    public override init() {
        super.init()
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
        if self.appParams != nil {
            map["AppParams"] = self.appParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppParams"] as? String {
            self.appParams = value
        }
    }
}

public class PrecheckVideoCharacterReplaceJobResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var errorCode: String?

        public var key: String?

        public override init() {
            super.init()
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
            if self.key != nil {
                map["Key"] = self.key!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
        }
    }
    public var requestId: String?

    public var result: [PrecheckVideoCharacterReplaceJobResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [PrecheckVideoCharacterReplaceJobResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = PrecheckVideoCharacterReplaceJobResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class PrecheckVideoCharacterReplaceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PrecheckVideoCharacterReplaceJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PrecheckVideoCharacterReplaceJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchMediaRequest : Tea.TeaModel {
    public var bizConfig: String?

    public var categoryId: Int64?

    public var match: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var scrollToken: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.match != nil {
            map["Match"] = self.match!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.scrollToken != nil {
            map["ScrollToken"] = self.scrollToken!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Match"] as? String {
            self.match = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ScrollToken"] as? String {
            self.scrollToken = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class SearchMediaResponseBody : Tea.TeaModel {
    public class MediaInfoList : Tea.TeaModel {
        public class FileInfoList : Tea.TeaModel {
            public class FileBasicInfo : Tea.TeaModel {
                public var bitrate: String?

                public var createTime: String?

                public var duration: String?

                public var fileName: String?

                public var fileSize: String?

                public var fileStatus: String?

                public var fileType: String?

                public var fileUrl: String?

                public var formatName: String?

                public var height: String?

                public var imagesInput: String?

                public var modifiedTime: String?

                public var region: String?

                public var width: String?

                public override init() {
                    super.init()
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
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileStatus != nil {
                        map["FileStatus"] = self.fileStatus!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.formatName != nil {
                        map["FormatName"] = self.formatName!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.imagesInput != nil {
                        map["ImagesInput"] = self.imagesInput!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? String {
                        self.fileSize = value
                    }
                    if let value = dict["FileStatus"] as? String {
                        self.fileStatus = value
                    }
                    if let value = dict["FileType"] as? String {
                        self.fileType = value
                    }
                    if let value = dict["FileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["FormatName"] as? String {
                        self.formatName = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["ImagesInput"] as? String {
                        self.imagesInput = value
                    }
                    if let value = dict["ModifiedTime"] as? String {
                        self.modifiedTime = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public var fileBasicInfo: SearchMediaResponseBody.MediaInfoList.FileInfoList.FileBasicInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fileBasicInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileBasicInfo != nil {
                    map["FileBasicInfo"] = self.fileBasicInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileBasicInfo"] as? [String: Any?] {
                    var model = SearchMediaResponseBody.MediaInfoList.FileInfoList.FileBasicInfo()
                    model.fromMap(value)
                    self.fileBasicInfo = model
                }
            }
        }
        public class MediaBasicInfo : Tea.TeaModel {
            public var businessType: String?

            public var categoryId: Int64?

            public var categoryName: String?

            public var coverURL: String?

            public var createTime: String?

            public var description_: String?

            public var entityId: String?

            public var inputURL: String?

            public var mediaId: String?

            public var mediaTags: String?

            public var mediaType: String?

            public var modifiedTime: String?

            public var snapshots: String?

            public var source: String?

            public var spriteImages: String?

            public var status: String?

            public var title: String?

            public var transcodeStatus: String?

            public var uploadSource: String?

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
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.coverURL != nil {
                    map["CoverURL"] = self.coverURL!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.inputURL != nil {
                    map["InputURL"] = self.inputURL!
                }
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.mediaTags != nil {
                    map["MediaTags"] = self.mediaTags!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.snapshots != nil {
                    map["Snapshots"] = self.snapshots!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.spriteImages != nil {
                    map["SpriteImages"] = self.spriteImages!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.transcodeStatus != nil {
                    map["TranscodeStatus"] = self.transcodeStatus!
                }
                if self.uploadSource != nil {
                    map["UploadSource"] = self.uploadSource!
                }
                if self.userData != nil {
                    map["UserData"] = self.userData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BusinessType"] as? String {
                    self.businessType = value
                }
                if let value = dict["CategoryId"] as? Int64 {
                    self.categoryId = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["CoverURL"] as? String {
                    self.coverURL = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["InputURL"] as? String {
                    self.inputURL = value
                }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["MediaTags"] as? String {
                    self.mediaTags = value
                }
                if let value = dict["MediaType"] as? String {
                    self.mediaType = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["Snapshots"] as? String {
                    self.snapshots = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SpriteImages"] as? String {
                    self.spriteImages = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["TranscodeStatus"] as? String {
                    self.transcodeStatus = value
                }
                if let value = dict["UploadSource"] as? String {
                    self.uploadSource = value
                }
                if let value = dict["UserData"] as? String {
                    self.userData = value
                }
            }
        }
        public class MediaDynamicInfo : Tea.TeaModel {
            public class DynamicMetaData : Tea.TeaModel {
                public var data: String?

                public var entityId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.data != nil {
                        map["Data"] = self.data!
                    }
                    if self.entityId != nil {
                        map["EntityId"] = self.entityId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? String {
                        self.data = value
                    }
                    if let value = dict["EntityId"] as? String {
                        self.entityId = value
                    }
                }
            }
            public var dynamicMetaData: SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo.DynamicMetaData?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dynamicMetaData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dynamicMetaData != nil {
                    map["DynamicMetaData"] = self.dynamicMetaData?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DynamicMetaData"] as? [String: Any?] {
                    var model = SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo.DynamicMetaData()
                    model.fromMap(value)
                    self.dynamicMetaData = model
                }
            }
        }
        public var fileInfoList: [SearchMediaResponseBody.MediaInfoList.FileInfoList]?

        public var mediaBasicInfo: SearchMediaResponseBody.MediaInfoList.MediaBasicInfo?

        public var mediaDynamicInfo: SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo?

        public var mediaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mediaBasicInfo?.validate()
            try self.mediaDynamicInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileInfoList != nil {
                var tmp : [Any] = []
                for k in self.fileInfoList! {
                    tmp.append(k.toMap())
                }
                map["FileInfoList"] = tmp
            }
            if self.mediaBasicInfo != nil {
                map["MediaBasicInfo"] = self.mediaBasicInfo?.toMap()
            }
            if self.mediaDynamicInfo != nil {
                map["MediaDynamicInfo"] = self.mediaDynamicInfo?.toMap()
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileInfoList"] as? [Any?] {
                var tmp : [SearchMediaResponseBody.MediaInfoList.FileInfoList] = []
                for v in value {
                    if v != nil {
                        var model = SearchMediaResponseBody.MediaInfoList.FileInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileInfoList = tmp
            }
            if let value = dict["MediaBasicInfo"] as? [String: Any?] {
                var model = SearchMediaResponseBody.MediaInfoList.MediaBasicInfo()
                model.fromMap(value)
                self.mediaBasicInfo = model
            }
            if let value = dict["MediaDynamicInfo"] as? [String: Any?] {
                var model = SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo()
                model.fromMap(value)
                self.mediaDynamicInfo = model
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
        }
    }
    public var code: String?

    public var mediaInfoList: [SearchMediaResponseBody.MediaInfoList]?

    public var requestId: String?

    public var scrollToken: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.mediaInfoList != nil {
            var tmp : [Any] = []
            for k in self.mediaInfoList! {
                tmp.append(k.toMap())
            }
            map["MediaInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scrollToken != nil {
            map["ScrollToken"] = self.scrollToken!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MediaInfoList"] as? [Any?] {
            var tmp : [SearchMediaResponseBody.MediaInfoList] = []
            for v in value {
                if v != nil {
                    var model = SearchMediaResponseBody.MediaInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mediaInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScrollToken"] as? String {
            self.scrollToken = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class SearchMediaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchMediaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchMediaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitAgentJobRequest : Tea.TeaModel {
    public var model: String?

    public var notifyUrl: String?

    public var prompt: String?

    public var skill: String?

    public var userData: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.notifyUrl != nil {
            map["NotifyUrl"] = self.notifyUrl!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.skill != nil {
            map["Skill"] = self.skill!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NotifyUrl"] as? String {
            self.notifyUrl = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["Skill"] as? String {
            self.skill = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitAgentJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class SubmitAgentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAgentJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitAgentJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitImageGenerationJobRequest : Tea.TeaModel {
    public var aspectRatio: String?

    public var clientToken: String?

    public var input: String?

    public var jobParameters: String?

    public var jobType: String?

    public var model: String?

    public var n: String?

    public var resolution: String?

    public var scene: String?

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
        if self.aspectRatio != nil {
            map["AspectRatio"] = self.aspectRatio!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.jobParameters != nil {
            map["JobParameters"] = self.jobParameters!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.n != nil {
            map["N"] = self.n!
        }
        if self.resolution != nil {
            map["Resolution"] = self.resolution!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatio"] as? String {
            self.aspectRatio = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["JobParameters"] as? String {
            self.jobParameters = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["N"] as? String {
            self.n = value
        }
        if let value = dict["Resolution"] as? String {
            self.resolution = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitImageGenerationJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class SubmitImageGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitImageGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitImageGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitMediaComprehensionJobRequest : Tea.TeaModel {
    public var input: String?

    public var jobParams: String?

    public var jobType: String?

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
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.jobParams != nil {
            map["JobParams"] = self.jobParams!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["JobParams"] as? String {
            self.jobParams = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitMediaComprehensionJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var jobId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitMediaComprehensionJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitMediaComprehensionJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitMediaComprehensionJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitRemakeScriptJobRequest : Tea.TeaModel {
    public var remakeParams: String?

    public var remakeType: String?

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
        if self.remakeParams != nil {
            map["RemakeParams"] = self.remakeParams!
        }
        if self.remakeType != nil {
            map["RemakeType"] = self.remakeType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RemakeParams"] as? String {
            self.remakeParams = value
        }
        if let value = dict["RemakeType"] as? String {
            self.remakeType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitRemakeScriptJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var jobId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitRemakeScriptJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitRemakeScriptJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitRemakeScriptJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoCharacterReplaceJobRequest : Tea.TeaModel {
    public var appId: String?

    public var appParams: String?

    public var folderId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.appParams != nil {
            map["AppParams"] = self.appParams!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppParams"] as? String {
            self.appParams = value
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
    }
}

public class SubmitVideoCharacterReplaceJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class SubmitVideoCharacterReplaceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoCharacterReplaceJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoCharacterReplaceJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoCreativeGenerationJobRequest : Tea.TeaModel {
    public var aspectRatio: String?

    public var avatarData: String?

    public var jobParams: String?

    public var outputLanguages: String?

    public var resolution: String?

    public var sceneType: String?

    public var userData: String?

    public var userMaterials: String?

    public var withSubtitles: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aspectRatio != nil {
            map["AspectRatio"] = self.aspectRatio!
        }
        if self.avatarData != nil {
            map["AvatarData"] = self.avatarData!
        }
        if self.jobParams != nil {
            map["JobParams"] = self.jobParams!
        }
        if self.outputLanguages != nil {
            map["OutputLanguages"] = self.outputLanguages!
        }
        if self.resolution != nil {
            map["Resolution"] = self.resolution!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.userMaterials != nil {
            map["UserMaterials"] = self.userMaterials!
        }
        if self.withSubtitles != nil {
            map["WithSubtitles"] = self.withSubtitles!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatio"] as? String {
            self.aspectRatio = value
        }
        if let value = dict["AvatarData"] as? String {
            self.avatarData = value
        }
        if let value = dict["JobParams"] as? String {
            self.jobParams = value
        }
        if let value = dict["OutputLanguages"] as? String {
            self.outputLanguages = value
        }
        if let value = dict["Resolution"] as? String {
            self.resolution = value
        }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["UserMaterials"] as? String {
            self.userMaterials = value
        }
        if let value = dict["WithSubtitles"] as? Bool {
            self.withSubtitles = value
        }
    }
}

public class SubmitVideoCreativeGenerationJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var jobId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitVideoCreativeGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoCreativeGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoCreativeGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoDetextJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var input: String?

    public var jobParameters: String?

    public var output: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.jobParameters != nil {
            map["JobParameters"] = self.jobParameters!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["JobParameters"] as? String {
            self.jobParameters = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitVideoDetextJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class SubmitVideoDetextJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoDetextJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoDetextJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoGenerationJobRequest : Tea.TeaModel {
    public var aspectRatio: String?

    public var clientToken: String?

    public var duration: String?

    public var input: String?

    public var jobParameters: String?

    public var jobType: String?

    public var model: String?

    public var n: Int32?

    public var output: String?

    public var resolution: String?

    public var scene: String?

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
        if self.aspectRatio != nil {
            map["AspectRatio"] = self.aspectRatio!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.jobParameters != nil {
            map["JobParameters"] = self.jobParameters!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.n != nil {
            map["N"] = self.n!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.resolution != nil {
            map["Resolution"] = self.resolution!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatio"] as? String {
            self.aspectRatio = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["JobParameters"] as? String {
            self.jobParameters = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["N"] as? Int32 {
            self.n = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["Resolution"] as? String {
            self.resolution = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitVideoGenerationJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class SubmitVideoGenerationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoGenerationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoGenerationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoRemakeJobRequest : Tea.TeaModel {
    public var input: String?

    public var remakeParams: String?

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
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.remakeParams != nil {
            map["RemakeParams"] = self.remakeParams!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["RemakeParams"] as? String {
            self.remakeParams = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitVideoRemakeJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var jobId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitVideoRemakeJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoRemakeJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoRemakeJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoRenderJobRequest : Tea.TeaModel {
    public var script: String?

    public var settings: String?

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
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.settings != nil {
            map["Settings"] = self.settings!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["Settings"] as? String {
            self.settings = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitVideoRenderJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var jobId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitVideoRenderJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoRenderJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoRenderJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoTranslationJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var input: String?

    public var jobParameters: String?

    public var jobType: String?

    public var output: String?

    public var title: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.jobParameters != nil {
            map["JobParameters"] = self.jobParameters!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["JobParameters"] as? String {
            self.jobParameters = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class SubmitVideoTranslationJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class SubmitVideoTranslationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoTranslationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitVideoTranslationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAssetCategoryRequest : Tea.TeaModel {
    public var categoryId: Int64?

    public var categoryName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
    }
}

public class UpdateAssetCategoryResponseBody : Tea.TeaModel {
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

public class UpdateAssetCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAssetCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAssetCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInfiniteCanvasRequest : Tea.TeaModel {
    public var canvasId: String?

    public var coverUrl: String?

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
        if self.canvasId != nil {
            map["CanvasId"] = self.canvasId!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanvasId"] as? String {
            self.canvasId = value
        }
        if let value = dict["CoverUrl"] as? String {
            self.coverUrl = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateInfiniteCanvasResponseBody : Tea.TeaModel {
    public var canvasId: String?

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
        if self.canvasId != nil {
            map["CanvasId"] = self.canvasId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanvasId"] as? String {
            self.canvasId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateInfiniteCanvasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInfiniteCanvasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInfiniteCanvasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMediaRequest : Tea.TeaModel {
    public var appendTags: Bool?

    public var bizConfig: String?

    public var categoryId: Int64?

    public var coverURL: String?

    public var description_: String?

    public var dynamicMetaData: String?

    public var inputURL: String?

    public var mediaId: String?

    public var mediaTags: String?

    public var title: String?

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
        if self.appendTags != nil {
            map["AppendTags"] = self.appendTags!
        }
        if self.bizConfig != nil {
            map["BizConfig"] = self.bizConfig!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.coverURL != nil {
            map["CoverURL"] = self.coverURL!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dynamicMetaData != nil {
            map["DynamicMetaData"] = self.dynamicMetaData!
        }
        if self.inputURL != nil {
            map["InputURL"] = self.inputURL!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.mediaTags != nil {
            map["MediaTags"] = self.mediaTags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppendTags"] as? Bool {
            self.appendTags = value
        }
        if let value = dict["BizConfig"] as? String {
            self.bizConfig = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["CoverURL"] as? String {
            self.coverURL = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DynamicMetaData"] as? String {
            self.dynamicMetaData = value
        }
        if let value = dict["InputURL"] as? String {
            self.inputURL = value
        }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
        if let value = dict["MediaTags"] as? String {
            self.mediaTags = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class UpdateMediaResponseBody : Tea.TeaModel {
    public var mediaId: String?

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
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateMediaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMediaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateMediaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
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
