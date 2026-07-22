import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchGetMediasRequest : Tea.TeaModel {
    public var authTimeout: Int64?

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
        if self.authTimeout != nil {
            map["AuthTimeout"] = self.authTimeout!
        }
        if self.mediaIds != nil {
            map["MediaIds"] = self.mediaIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthTimeout"] as? Int64 {
            self.authTimeout = value
        }
        if let value = dict["MediaIds"] as? String {
            self.mediaIds = value
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

public class DeleteMediasRequest : Tea.TeaModel {
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

public class GetMediaRequest : Tea.TeaModel {
    public var authTimeout: Int64?

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
        try self.mediaComprehensionJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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

public class ImportMediaRequest : Tea.TeaModel {
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

    public var registerConfig: String?

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
        if self.registerConfig != nil {
            map["RegisterConfig"] = self.registerConfig!
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
        if let value = dict["RegisterConfig"] as? String {
            self.registerConfig = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public var total: String?

    public override init() {
        super.init()
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
        if let value = dict["Total"] as? String {
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

public class SearchMediaRequest : Tea.TeaModel {
    public var categoryId: Int64?

    public var entityId: String?

    public var match: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var scrollToken: String?

    public var searchLibName: String?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
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
        if self.scrollToken != nil {
            map["ScrollToken"] = self.scrollToken!
        }
        if self.searchLibName != nil {
            map["SearchLibName"] = self.searchLibName!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
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
        if let value = dict["ScrollToken"] as? String {
            self.scrollToken = value
        }
        if let value = dict["SearchLibName"] as? String {
            self.searchLibName = value
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
            public class MediaExtraInfo : Tea.TeaModel {
                public var aiAuditJobId: String?

                public var aiAuditLabel: String?

                public var aiAuditResult: String?

                public var aiAuditStatus: String?

                public var aiAuditTemplate: String?

                public var manualAuditResult: String?

                public var manualAuditStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.aiAuditJobId != nil {
                        map["AiAuditJobId"] = self.aiAuditJobId!
                    }
                    if self.aiAuditLabel != nil {
                        map["AiAuditLabel"] = self.aiAuditLabel!
                    }
                    if self.aiAuditResult != nil {
                        map["AiAuditResult"] = self.aiAuditResult!
                    }
                    if self.aiAuditStatus != nil {
                        map["AiAuditStatus"] = self.aiAuditStatus!
                    }
                    if self.aiAuditTemplate != nil {
                        map["AiAuditTemplate"] = self.aiAuditTemplate!
                    }
                    if self.manualAuditResult != nil {
                        map["ManualAuditResult"] = self.manualAuditResult!
                    }
                    if self.manualAuditStatus != nil {
                        map["ManualAuditStatus"] = self.manualAuditStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AiAuditJobId"] as? String {
                        self.aiAuditJobId = value
                    }
                    if let value = dict["AiAuditLabel"] as? String {
                        self.aiAuditLabel = value
                    }
                    if let value = dict["AiAuditResult"] as? String {
                        self.aiAuditResult = value
                    }
                    if let value = dict["AiAuditStatus"] as? String {
                        self.aiAuditStatus = value
                    }
                    if let value = dict["AiAuditTemplate"] as? String {
                        self.aiAuditTemplate = value
                    }
                    if let value = dict["ManualAuditResult"] as? String {
                        self.manualAuditResult = value
                    }
                    if let value = dict["ManualAuditStatus"] as? String {
                        self.manualAuditStatus = value
                    }
                }
            }
            public var dynamicMetaData: SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo.DynamicMetaData?

            public var mediaExtraInfo: SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo.MediaExtraInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dynamicMetaData?.validate()
                try self.mediaExtraInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dynamicMetaData != nil {
                    map["DynamicMetaData"] = self.dynamicMetaData?.toMap()
                }
                if self.mediaExtraInfo != nil {
                    map["MediaExtraInfo"] = self.mediaExtraInfo?.toMap()
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
                if let value = dict["MediaExtraInfo"] as? [String: Any?] {
                    var model = SearchMediaResponseBody.MediaInfoList.MediaDynamicInfo.MediaExtraInfo()
                    model.fromMap(value)
                    self.mediaExtraInfo = model
                }
            }
        }
        public var customFields: String?

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
            if self.customFields != nil {
                map["CustomFields"] = self.customFields!
            }
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
            if let value = dict["CustomFields"] as? String {
                self.customFields = value
            }
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
    public var jobParams: String?

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
        if self.jobParams != nil {
            map["JobParams"] = self.jobParams!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobParams"] as? String {
            self.jobParams = value
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

public class SubmitVideoGenerationJobRequest : Tea.TeaModel {
    public var aspectRatio: String?

    public var clientToken: String?

    public var duration: String?

    public var input: String?

    public var jobParameters: String?

    public var jobType: String?

    public var model: String?

    public var n: Int32?

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

public class UpdateMediaRequest : Tea.TeaModel {
    public var appendTags: Bool?

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
