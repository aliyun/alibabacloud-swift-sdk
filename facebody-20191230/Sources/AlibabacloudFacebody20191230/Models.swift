import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import DarabonbaNumber
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddFaceRequest : Tea.TeaModel {
    public var dbName: String?

    public var entityId: String?

    public var extraData: String?

    public var imageUrl: String?

    public var qualityScoreThreshold: Double?

    public var similarityScoreThresholdBetweenEntity: Double?

    public var similarityScoreThresholdInEntity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        if self.similarityScoreThresholdBetweenEntity != nil {
            map["SimilarityScoreThresholdBetweenEntity"] = self.similarityScoreThresholdBetweenEntity!
        }
        if self.similarityScoreThresholdInEntity != nil {
            map["SimilarityScoreThresholdInEntity"] = self.similarityScoreThresholdInEntity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["ExtraData"] as? String {
            self.extraData = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
        if let value = dict["SimilarityScoreThresholdBetweenEntity"] as? Double {
            self.similarityScoreThresholdBetweenEntity = value
        }
        if let value = dict["SimilarityScoreThresholdInEntity"] as? Double {
            self.similarityScoreThresholdInEntity = value
        }
    }
}

public class AddFaceAdvanceRequest : Tea.TeaModel {
    public var dbName: String?

    public var entityId: String?

    public var extraData: String?

    public var imageUrlObject: InputStream?

    public var qualityScoreThreshold: Double?

    public var similarityScoreThresholdBetweenEntity: Double?

    public var similarityScoreThresholdInEntity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.imageUrlObject != nil {
            map["ImageUrl"] = self.imageUrlObject!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        if self.similarityScoreThresholdBetweenEntity != nil {
            map["SimilarityScoreThresholdBetweenEntity"] = self.similarityScoreThresholdBetweenEntity!
        }
        if self.similarityScoreThresholdInEntity != nil {
            map["SimilarityScoreThresholdInEntity"] = self.similarityScoreThresholdInEntity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["ExtraData"] as? String {
            self.extraData = value
        }
        if let value = dict["ImageUrl"] as? InputStream {
            self.imageUrlObject = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
        if let value = dict["SimilarityScoreThresholdBetweenEntity"] as? Double {
            self.similarityScoreThresholdBetweenEntity = value
        }
        if let value = dict["SimilarityScoreThresholdInEntity"] as? Double {
            self.similarityScoreThresholdInEntity = value
        }
    }
}

public class AddFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var faceId: String?

        public var qualitieScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            if self.qualitieScore != nil {
                map["QualitieScore"] = self.qualitieScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceId"] as? String {
                self.faceId = value
            }
            if let value = dict["QualitieScore"] as? Double {
                self.qualitieScore = value
            }
        }
    }
    public var data: AddFaceResponseBody.Data?

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
            var model = AddFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceEntityRequest : Tea.TeaModel {
    public var dbName: String?

    public var entityId: String?

    public var labels: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
    }
}

public class AddFaceEntityResponseBody : Tea.TeaModel {
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

public class AddFaceEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddFaceEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceImageTemplateRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class AddFaceImageTemplateAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class AddFaceImageTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FaceInfos : Tea.TeaModel {
            public class FaceRect : Tea.TeaModel {
                public var height: String?

                public var width: String?

                public var x: String?

                public var y: String?

                public override init() {
                    super.init()
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
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                    if let value = dict["X"] as? String {
                        self.x = value
                    }
                    if let value = dict["Y"] as? String {
                        self.y = value
                    }
                }
            }
            public var faceRect: AddFaceImageTemplateResponseBody.Data.FaceInfos.FaceRect?

            public var templateFaceID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceRect?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceRect != nil {
                    map["FaceRect"] = self.faceRect?.toMap()
                }
                if self.templateFaceID != nil {
                    map["TemplateFaceID"] = self.templateFaceID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceRect"] as? [String: Any?] {
                    var model = AddFaceImageTemplateResponseBody.Data.FaceInfos.FaceRect()
                    model.fromMap(value)
                    self.faceRect = model
                }
                if let value = dict["TemplateFaceID"] as? String {
                    self.templateFaceID = value
                }
            }
        }
        public var faceInfos: [AddFaceImageTemplateResponseBody.Data.FaceInfos]?

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
            if self.faceInfos != nil {
                var tmp : [Any] = []
                for k in self.faceInfos! {
                    tmp.append(k.toMap())
                }
                map["FaceInfos"] = tmp
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceInfos"] as? [Any?] {
                var tmp : [AddFaceImageTemplateResponseBody.Data.FaceInfos] = []
                for v in value {
                    if v != nil {
                        var model = AddFaceImageTemplateResponseBody.Data.FaceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.faceInfos = tmp
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
        }
    }
    public var data: AddFaceImageTemplateResponseBody.Data?

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
            var model = AddFaceImageTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddFaceImageTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceImageTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddFaceImageTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchAddFacesRequest : Tea.TeaModel {
    public class Faces : Tea.TeaModel {
        public var extraData: String?

        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extraData != nil {
                map["ExtraData"] = self.extraData!
            }
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtraData"] as? String {
                self.extraData = value
            }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var dbName: String?

    public var entityId: String?

    public var faces: [BatchAddFacesRequest.Faces]?

    public var qualityScoreThreshold: Double?

    public var similarityScoreThresholdBetweenEntity: Double?

    public var similarityScoreThresholdInEntity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        if self.similarityScoreThresholdBetweenEntity != nil {
            map["SimilarityScoreThresholdBetweenEntity"] = self.similarityScoreThresholdBetweenEntity!
        }
        if self.similarityScoreThresholdInEntity != nil {
            map["SimilarityScoreThresholdInEntity"] = self.similarityScoreThresholdInEntity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["Faces"] as? [Any?] {
            var tmp : [BatchAddFacesRequest.Faces] = []
            for v in value {
                if v != nil {
                    var model = BatchAddFacesRequest.Faces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.faces = tmp
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
        if let value = dict["SimilarityScoreThresholdBetweenEntity"] as? Double {
            self.similarityScoreThresholdBetweenEntity = value
        }
        if let value = dict["SimilarityScoreThresholdInEntity"] as? Double {
            self.similarityScoreThresholdInEntity = value
        }
    }
}

public class BatchAddFacesAdvanceRequest : Tea.TeaModel {
    public class Faces : Tea.TeaModel {
        public var extraData: String?

        public var imageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extraData != nil {
                map["ExtraData"] = self.extraData!
            }
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtraData"] as? String {
                self.extraData = value
            }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
        }
    }
    public var dbName: String?

    public var entityId: String?

    public var faces: [BatchAddFacesAdvanceRequest.Faces]?

    public var qualityScoreThreshold: Double?

    public var similarityScoreThresholdBetweenEntity: Double?

    public var similarityScoreThresholdInEntity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        if self.similarityScoreThresholdBetweenEntity != nil {
            map["SimilarityScoreThresholdBetweenEntity"] = self.similarityScoreThresholdBetweenEntity!
        }
        if self.similarityScoreThresholdInEntity != nil {
            map["SimilarityScoreThresholdInEntity"] = self.similarityScoreThresholdInEntity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["Faces"] as? [Any?] {
            var tmp : [BatchAddFacesAdvanceRequest.Faces] = []
            for v in value {
                if v != nil {
                    var model = BatchAddFacesAdvanceRequest.Faces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.faces = tmp
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
        if let value = dict["SimilarityScoreThresholdBetweenEntity"] as? Double {
            self.similarityScoreThresholdBetweenEntity = value
        }
        if let value = dict["SimilarityScoreThresholdInEntity"] as? Double {
            self.similarityScoreThresholdInEntity = value
        }
    }
}

public class BatchAddFacesShrinkRequest : Tea.TeaModel {
    public var dbName: String?

    public var entityId: String?

    public var facesShrink: String?

    public var qualityScoreThreshold: Double?

    public var similarityScoreThresholdBetweenEntity: Double?

    public var similarityScoreThresholdInEntity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.facesShrink != nil {
            map["Faces"] = self.facesShrink!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        if self.similarityScoreThresholdBetweenEntity != nil {
            map["SimilarityScoreThresholdBetweenEntity"] = self.similarityScoreThresholdBetweenEntity!
        }
        if self.similarityScoreThresholdInEntity != nil {
            map["SimilarityScoreThresholdInEntity"] = self.similarityScoreThresholdInEntity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["Faces"] as? String {
            self.facesShrink = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
        if let value = dict["SimilarityScoreThresholdBetweenEntity"] as? Double {
            self.similarityScoreThresholdBetweenEntity = value
        }
        if let value = dict["SimilarityScoreThresholdInEntity"] as? Double {
            self.similarityScoreThresholdInEntity = value
        }
    }
}

public class BatchAddFacesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FailedFaces : Tea.TeaModel {
            public var code: String?

            public var imageURL: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
            }
        }
        public class InsertedFaces : Tea.TeaModel {
            public var faceId: String?

            public var imageURL: String?

            public var qualitieScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceId != nil {
                    map["FaceId"] = self.faceId!
                }
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.qualitieScore != nil {
                    map["QualitieScore"] = self.qualitieScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceId"] as? String {
                    self.faceId = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["QualitieScore"] as? Double {
                    self.qualitieScore = value
                }
            }
        }
        public var failedFaces: [BatchAddFacesResponseBody.Data.FailedFaces]?

        public var insertedFaces: [BatchAddFacesResponseBody.Data.InsertedFaces]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedFaces != nil {
                var tmp : [Any] = []
                for k in self.failedFaces! {
                    tmp.append(k.toMap())
                }
                map["FailedFaces"] = tmp
            }
            if self.insertedFaces != nil {
                var tmp : [Any] = []
                for k in self.insertedFaces! {
                    tmp.append(k.toMap())
                }
                map["InsertedFaces"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedFaces"] as? [Any?] {
                var tmp : [BatchAddFacesResponseBody.Data.FailedFaces] = []
                for v in value {
                    if v != nil {
                        var model = BatchAddFacesResponseBody.Data.FailedFaces()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedFaces = tmp
            }
            if let value = dict["InsertedFaces"] as? [Any?] {
                var tmp : [BatchAddFacesResponseBody.Data.InsertedFaces] = []
                for v in value {
                    if v != nil {
                        var model = BatchAddFacesResponseBody.Data.InsertedFaces()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.insertedFaces = tmp
            }
        }
    }
    public var data: BatchAddFacesResponseBody.Data?

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
            var model = BatchAddFacesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchAddFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddFacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchAddFacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BlurFaceRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class BlurFaceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class BlurFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public var maskURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            if self.maskURL != nil {
                map["MaskURL"] = self.maskURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
            if let value = dict["MaskURL"] as? String {
                self.maskURL = value
            }
        }
    }
    public var data: BlurFaceResponseBody.Data?

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
            var model = BlurFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BlurFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BlurFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BlurFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BodyPostureRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class BodyPostureAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class BodyPostureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MetaObject : Tea.TeaModel {
            public var height: Int32?

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
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class Outputs : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public class Bodies : Tea.TeaModel {
                    public class Positions : Tea.TeaModel {
                        public var points: [Double]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.points != nil {
                                map["Points"] = self.points!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Points"] as? [Double] {
                                self.points = value
                            }
                        }
                    }
                    public var confident: Double?

                    public var label: String?

                    public var positions: [BodyPostureResponseBody.Data.Outputs.Results.Bodies.Positions]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.confident != nil {
                            map["Confident"] = self.confident!
                        }
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        if self.positions != nil {
                            var tmp : [Any] = []
                            for k in self.positions! {
                                tmp.append(k.toMap())
                            }
                            map["Positions"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confident"] as? Double {
                            self.confident = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
                        }
                        if let value = dict["Positions"] as? [Any?] {
                            var tmp : [BodyPostureResponseBody.Data.Outputs.Results.Bodies.Positions] = []
                            for v in value {
                                if v != nil {
                                    var model = BodyPostureResponseBody.Data.Outputs.Results.Bodies.Positions()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.positions = tmp
                        }
                    }
                }
                public var bodies: [BodyPostureResponseBody.Data.Outputs.Results.Bodies]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bodies"] as? [Any?] {
                        var tmp : [BodyPostureResponseBody.Data.Outputs.Results.Bodies] = []
                        for v in value {
                            if v != nil {
                                var model = BodyPostureResponseBody.Data.Outputs.Results.Bodies()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.bodies = tmp
                    }
                }
            }
            public var humanCount: Int32?

            public var results: [BodyPostureResponseBody.Data.Outputs.Results]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.humanCount != nil {
                    map["HumanCount"] = self.humanCount!
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
                if let value = dict["HumanCount"] as? Int32 {
                    self.humanCount = value
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [BodyPostureResponseBody.Data.Outputs.Results] = []
                    for v in value {
                        if v != nil {
                            var model = BodyPostureResponseBody.Data.Outputs.Results()
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
        public var metaObject: BodyPostureResponseBody.Data.MetaObject?

        public var outputs: [BodyPostureResponseBody.Data.Outputs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metaObject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metaObject != nil {
                map["MetaObject"] = self.metaObject?.toMap()
            }
            if self.outputs != nil {
                var tmp : [Any] = []
                for k in self.outputs! {
                    tmp.append(k.toMap())
                }
                map["Outputs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MetaObject"] as? [String: Any?] {
                var model = BodyPostureResponseBody.Data.MetaObject()
                model.fromMap(value)
                self.metaObject = model
            }
            if let value = dict["Outputs"] as? [Any?] {
                var tmp : [BodyPostureResponseBody.Data.Outputs] = []
                for v in value {
                    if v != nil {
                        var model = BodyPostureResponseBody.Data.Outputs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.outputs = tmp
            }
        }
    }
    public var data: BodyPostureResponseBody.Data?

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
            var model = BodyPostureResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BodyPostureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BodyPostureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BodyPostureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompareFaceRequest : Tea.TeaModel {
    public var imageDataA: String?

    public var imageDataB: String?

    public var imageURLA: String?

    public var imageURLB: String?

    public var qualityScoreThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageDataA != nil {
            map["ImageDataA"] = self.imageDataA!
        }
        if self.imageDataB != nil {
            map["ImageDataB"] = self.imageDataB!
        }
        if self.imageURLA != nil {
            map["ImageURLA"] = self.imageURLA!
        }
        if self.imageURLB != nil {
            map["ImageURLB"] = self.imageURLB!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageDataA"] as? String {
            self.imageDataA = value
        }
        if let value = dict["ImageDataB"] as? String {
            self.imageDataB = value
        }
        if let value = dict["ImageURLA"] as? String {
            self.imageURLA = value
        }
        if let value = dict["ImageURLB"] as? String {
            self.imageURLB = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
    }
}

public class CompareFaceAdvanceRequest : Tea.TeaModel {
    public var imageDataA: String?

    public var imageDataB: String?

    public var imageURLAObject: InputStream?

    public var imageURLBObject: InputStream?

    public var qualityScoreThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageDataA != nil {
            map["ImageDataA"] = self.imageDataA!
        }
        if self.imageDataB != nil {
            map["ImageDataB"] = self.imageDataB!
        }
        if self.imageURLAObject != nil {
            map["ImageURLA"] = self.imageURLAObject!
        }
        if self.imageURLBObject != nil {
            map["ImageURLB"] = self.imageURLBObject!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageDataA"] as? String {
            self.imageDataA = value
        }
        if let value = dict["ImageDataB"] as? String {
            self.imageDataB = value
        }
        if let value = dict["ImageURLA"] as? InputStream {
            self.imageURLAObject = value
        }
        if let value = dict["ImageURLB"] as? InputStream {
            self.imageURLBObject = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
    }
}

public class CompareFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var confidence: Double?

        public var isMaskA: Int64?

        public var isMaskB: Int64?

        public var landmarksAList: [Int64]?

        public var landmarksBList: [Int64]?

        public var messageTips: String?

        public var qualityScoreA: Double?

        public var qualityScoreB: Double?

        public var rectAList: [Int32]?

        public var rectBList: [Int32]?

        public var thresholds: [Double]?

        public override init() {
            super.init()
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
            if self.isMaskA != nil {
                map["IsMaskA"] = self.isMaskA!
            }
            if self.isMaskB != nil {
                map["IsMaskB"] = self.isMaskB!
            }
            if self.landmarksAList != nil {
                map["LandmarksAList"] = self.landmarksAList!
            }
            if self.landmarksBList != nil {
                map["LandmarksBList"] = self.landmarksBList!
            }
            if self.messageTips != nil {
                map["MessageTips"] = self.messageTips!
            }
            if self.qualityScoreA != nil {
                map["QualityScoreA"] = self.qualityScoreA!
            }
            if self.qualityScoreB != nil {
                map["QualityScoreB"] = self.qualityScoreB!
            }
            if self.rectAList != nil {
                map["RectAList"] = self.rectAList!
            }
            if self.rectBList != nil {
                map["RectBList"] = self.rectBList!
            }
            if self.thresholds != nil {
                map["Thresholds"] = self.thresholds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Confidence"] as? Double {
                self.confidence = value
            }
            if let value = dict["IsMaskA"] as? Int64 {
                self.isMaskA = value
            }
            if let value = dict["IsMaskB"] as? Int64 {
                self.isMaskB = value
            }
            if let value = dict["LandmarksAList"] as? [Int64] {
                self.landmarksAList = value
            }
            if let value = dict["LandmarksBList"] as? [Int64] {
                self.landmarksBList = value
            }
            if let value = dict["MessageTips"] as? String {
                self.messageTips = value
            }
            if let value = dict["QualityScoreA"] as? Double {
                self.qualityScoreA = value
            }
            if let value = dict["QualityScoreB"] as? Double {
                self.qualityScoreB = value
            }
            if let value = dict["RectAList"] as? [Int32] {
                self.rectAList = value
            }
            if let value = dict["RectBList"] as? [Int32] {
                self.rectBList = value
            }
            if let value = dict["Thresholds"] as? [Double] {
                self.thresholds = value
            }
        }
    }
    public var data: CompareFaceResponseBody.Data?

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
            var model = CompareFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CompareFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompareFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompareFaceWithMaskRequest : Tea.TeaModel {
    public var imageURLA: String?

    public var imageURLB: String?

    public var qualityScoreThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLA != nil {
            map["ImageURLA"] = self.imageURLA!
        }
        if self.imageURLB != nil {
            map["ImageURLB"] = self.imageURLB!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURLA"] as? String {
            self.imageURLA = value
        }
        if let value = dict["ImageURLB"] as? String {
            self.imageURLB = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
    }
}

public class CompareFaceWithMaskAdvanceRequest : Tea.TeaModel {
    public var imageURLAObject: InputStream?

    public var imageURLBObject: InputStream?

    public var qualityScoreThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLAObject != nil {
            map["ImageURLA"] = self.imageURLAObject!
        }
        if self.imageURLBObject != nil {
            map["ImageURLB"] = self.imageURLBObject!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURLA"] as? InputStream {
            self.imageURLAObject = value
        }
        if let value = dict["ImageURLB"] as? InputStream {
            self.imageURLBObject = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
    }
}

public class CompareFaceWithMaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var confidence: Double?

        public var isMaskA: Int64?

        public var isMaskB: Int64?

        public var landmarksAList: [Int64]?

        public var landmarksBList: [Int64]?

        public var messageTips: String?

        public var qualityScoreA: Double?

        public var qualityScoreB: Double?

        public var rectAList: [Int64]?

        public var rectBList: [Int64]?

        public var thresholds: [Int64]?

        public override init() {
            super.init()
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
            if self.isMaskA != nil {
                map["IsMaskA"] = self.isMaskA!
            }
            if self.isMaskB != nil {
                map["IsMaskB"] = self.isMaskB!
            }
            if self.landmarksAList != nil {
                map["LandmarksAList"] = self.landmarksAList!
            }
            if self.landmarksBList != nil {
                map["LandmarksBList"] = self.landmarksBList!
            }
            if self.messageTips != nil {
                map["MessageTips"] = self.messageTips!
            }
            if self.qualityScoreA != nil {
                map["QualityScoreA"] = self.qualityScoreA!
            }
            if self.qualityScoreB != nil {
                map["QualityScoreB"] = self.qualityScoreB!
            }
            if self.rectAList != nil {
                map["RectAList"] = self.rectAList!
            }
            if self.rectBList != nil {
                map["RectBList"] = self.rectBList!
            }
            if self.thresholds != nil {
                map["Thresholds"] = self.thresholds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Confidence"] as? Double {
                self.confidence = value
            }
            if let value = dict["IsMaskA"] as? Int64 {
                self.isMaskA = value
            }
            if let value = dict["IsMaskB"] as? Int64 {
                self.isMaskB = value
            }
            if let value = dict["LandmarksAList"] as? [Int64] {
                self.landmarksAList = value
            }
            if let value = dict["LandmarksBList"] as? [Int64] {
                self.landmarksBList = value
            }
            if let value = dict["MessageTips"] as? String {
                self.messageTips = value
            }
            if let value = dict["QualityScoreA"] as? Double {
                self.qualityScoreA = value
            }
            if let value = dict["QualityScoreB"] as? Double {
                self.qualityScoreB = value
            }
            if let value = dict["RectAList"] as? [Int64] {
                self.rectAList = value
            }
            if let value = dict["RectBList"] as? [Int64] {
                self.rectBList = value
            }
            if let value = dict["Thresholds"] as? [Int64] {
                self.thresholds = value
            }
        }
    }
    public var data: CompareFaceWithMaskResponseBody.Data?

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
            var model = CompareFaceWithMaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CompareFaceWithMaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareFaceWithMaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompareFaceWithMaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFaceDbRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateFaceDbResponseBody : Tea.TeaModel {
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

public class CreateFaceDbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFaceDbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFaceDbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeepfakeFaceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageData: String?

        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageData"] as? String {
                self.imageData = value
            }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var tasks: [DeepfakeFaceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DeepfakeFaceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DeepfakeFaceRequest.Tasks()
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

public class DeepfakeFaceAdvanceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageData: String?

        public var imageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageData"] as? String {
                self.imageData = value
            }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
        }
    }
    public var tasks: [DeepfakeFaceAdvanceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DeepfakeFaceAdvanceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DeepfakeFaceAdvanceRequest.Tasks()
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

public class DeepfakeFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public class Rect : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Int64 {
                            self.height = value
                        }
                        if let value = dict["Left"] as? Int64 {
                            self.left_ = value
                        }
                        if let value = dict["Top"] as? Int64 {
                            self.top = value
                        }
                        if let value = dict["Width"] as? Int64 {
                            self.width = value
                        }
                    }
                }
                public var confidence: Double?

                public var label: String?

                public var messageTips: String?

                public var rect: DeepfakeFaceResponseBody.Data.Elements.Results.Rect?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.rect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["Confidence"] = self.confidence!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.messageTips != nil {
                        map["MessageTips"] = self.messageTips!
                    }
                    if self.rect != nil {
                        map["Rect"] = self.rect?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["MessageTips"] as? String {
                        self.messageTips = value
                    }
                    if let value = dict["Rect"] as? [String: Any?] {
                        var model = DeepfakeFaceResponseBody.Data.Elements.Results.Rect()
                        model.fromMap(value)
                        self.rect = model
                    }
                }
            }
            public var faceNumber: Int64?

            public var imageURL: String?

            public var results: [DeepfakeFaceResponseBody.Data.Elements.Results]?

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
                if self.faceNumber != nil {
                    map["FaceNumber"] = self.faceNumber!
                }
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.results != nil {
                    var tmp : [Any] = []
                    for k in self.results! {
                        tmp.append(k.toMap())
                    }
                    map["Results"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceNumber"] as? Int64 {
                    self.faceNumber = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [DeepfakeFaceResponseBody.Data.Elements.Results] = []
                    for v in value {
                        if v != nil {
                            var model = DeepfakeFaceResponseBody.Data.Elements.Results()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.results = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var elements: [DeepfakeFaceResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DeepfakeFaceResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DeepfakeFaceResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: DeepfakeFaceResponseBody.Data?

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
            var model = DeepfakeFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeepfakeFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeepfakeFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeepfakeFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceRequest : Tea.TeaModel {
    public var dbName: String?

    public var faceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.faceId != nil {
            map["FaceId"] = self.faceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FaceId"] as? String {
            self.faceId = value
        }
    }
}

public class DeleteFaceResponseBody : Tea.TeaModel {
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

public class DeleteFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceDbRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteFaceDbResponseBody : Tea.TeaModel {
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

public class DeleteFaceDbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceDbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFaceDbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceEntityRequest : Tea.TeaModel {
    public var dbName: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
    }
}

public class DeleteFaceEntityResponseBody : Tea.TeaModel {
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

public class DeleteFaceEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFaceEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceImageTemplateRequest : Tea.TeaModel {
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DeleteFaceImageTemplateResponseBody : Tea.TeaModel {
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

public class DeleteFaceImageTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceImageTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFaceImageTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectBodyCountRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class DetectBodyCountAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class DetectBodyCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var personNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.personNumber != nil {
                map["PersonNumber"] = self.personNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PersonNumber"] as? Int32 {
                self.personNumber = value
            }
        }
    }
    public var data: DetectBodyCountResponseBody.Data?

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
            var model = DetectBodyCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectBodyCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectBodyCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectBodyCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectCelebrityRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class DetectCelebrityAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class DetectCelebrityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FaceRecognizeResults : Tea.TeaModel {
            public var faceBoxes: [Double]?

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
                if self.faceBoxes != nil {
                    map["FaceBoxes"] = self.faceBoxes!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceBoxes"] as? [Double] {
                    self.faceBoxes = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var faceRecognizeResults: [DetectCelebrityResponseBody.Data.FaceRecognizeResults]?

        public var height: Int32?

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
            if self.faceRecognizeResults != nil {
                var tmp : [Any] = []
                for k in self.faceRecognizeResults! {
                    tmp.append(k.toMap())
                }
                map["FaceRecognizeResults"] = tmp
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceRecognizeResults"] as? [Any?] {
                var tmp : [DetectCelebrityResponseBody.Data.FaceRecognizeResults] = []
                for v in value {
                    if v != nil {
                        var model = DetectCelebrityResponseBody.Data.FaceRecognizeResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.faceRecognizeResults = tmp
            }
            if let value = dict["Height"] as? Int32 {
                self.height = value
            }
            if let value = dict["Width"] as? Int32 {
                self.width = value
            }
        }
    }
    public var data: DetectCelebrityResponseBody.Data?

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
            var model = DetectCelebrityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectCelebrityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectCelebrityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectCelebrityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectFaceRequest : Tea.TeaModel {
    public var imageURL: String?

    public var landmark: Bool?

    public var maxFaceNumber: Int64?

    public var pose: Bool?

    public var quality: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.landmark != nil {
            map["Landmark"] = self.landmark!
        }
        if self.maxFaceNumber != nil {
            map["MaxFaceNumber"] = self.maxFaceNumber!
        }
        if self.pose != nil {
            map["Pose"] = self.pose!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Landmark"] as? Bool {
            self.landmark = value
        }
        if let value = dict["MaxFaceNumber"] as? Int64 {
            self.maxFaceNumber = value
        }
        if let value = dict["Pose"] as? Bool {
            self.pose = value
        }
        if let value = dict["Quality"] as? Bool {
            self.quality = value
        }
    }
}

public class DetectFaceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var landmark: Bool?

    public var maxFaceNumber: Int64?

    public var pose: Bool?

    public var quality: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.landmark != nil {
            map["Landmark"] = self.landmark!
        }
        if self.maxFaceNumber != nil {
            map["MaxFaceNumber"] = self.maxFaceNumber!
        }
        if self.pose != nil {
            map["Pose"] = self.pose!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Landmark"] as? Bool {
            self.landmark = value
        }
        if let value = dict["MaxFaceNumber"] as? Int64 {
            self.maxFaceNumber = value
        }
        if let value = dict["Pose"] as? Bool {
            self.pose = value
        }
        if let value = dict["Quality"] as? Bool {
            self.quality = value
        }
    }
}

public class DetectFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Qualities : Tea.TeaModel {
            public var blurList: [Double]?

            public var fnfList: [Double]?

            public var glassList: [Double]?

            public var illuList: [Double]?

            public var maskList: [Double]?

            public var noiseList: [Double]?

            public var poseList: [Double]?

            public var scoreList: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blurList != nil {
                    map["BlurList"] = self.blurList!
                }
                if self.fnfList != nil {
                    map["FnfList"] = self.fnfList!
                }
                if self.glassList != nil {
                    map["GlassList"] = self.glassList!
                }
                if self.illuList != nil {
                    map["IlluList"] = self.illuList!
                }
                if self.maskList != nil {
                    map["MaskList"] = self.maskList!
                }
                if self.noiseList != nil {
                    map["NoiseList"] = self.noiseList!
                }
                if self.poseList != nil {
                    map["PoseList"] = self.poseList!
                }
                if self.scoreList != nil {
                    map["ScoreList"] = self.scoreList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlurList"] as? [Double] {
                    self.blurList = value
                }
                if let value = dict["FnfList"] as? [Double] {
                    self.fnfList = value
                }
                if let value = dict["GlassList"] as? [Double] {
                    self.glassList = value
                }
                if let value = dict["IlluList"] as? [Double] {
                    self.illuList = value
                }
                if let value = dict["MaskList"] as? [Double] {
                    self.maskList = value
                }
                if let value = dict["NoiseList"] as? [Double] {
                    self.noiseList = value
                }
                if let value = dict["PoseList"] as? [Double] {
                    self.poseList = value
                }
                if let value = dict["ScoreList"] as? [Double] {
                    self.scoreList = value
                }
            }
        }
        public var faceCount: Int32?

        public var faceProbabilityList: [Double]?

        public var faceRectangles: [Int32]?

        public var landmarkCount: Int32?

        public var landmarkScore: [Double]?

        public var landmarks: [Double]?

        public var poseList: [Double]?

        public var pupils: [Double]?

        public var qualities: DetectFaceResponseBody.Data.Qualities?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.qualities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceCount != nil {
                map["FaceCount"] = self.faceCount!
            }
            if self.faceProbabilityList != nil {
                map["FaceProbabilityList"] = self.faceProbabilityList!
            }
            if self.faceRectangles != nil {
                map["FaceRectangles"] = self.faceRectangles!
            }
            if self.landmarkCount != nil {
                map["LandmarkCount"] = self.landmarkCount!
            }
            if self.landmarkScore != nil {
                map["LandmarkScore"] = self.landmarkScore!
            }
            if self.landmarks != nil {
                map["Landmarks"] = self.landmarks!
            }
            if self.poseList != nil {
                map["PoseList"] = self.poseList!
            }
            if self.pupils != nil {
                map["Pupils"] = self.pupils!
            }
            if self.qualities != nil {
                map["Qualities"] = self.qualities?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceCount"] as? Int32 {
                self.faceCount = value
            }
            if let value = dict["FaceProbabilityList"] as? [Double] {
                self.faceProbabilityList = value
            }
            if let value = dict["FaceRectangles"] as? [Int32] {
                self.faceRectangles = value
            }
            if let value = dict["LandmarkCount"] as? Int32 {
                self.landmarkCount = value
            }
            if let value = dict["LandmarkScore"] as? [Double] {
                self.landmarkScore = value
            }
            if let value = dict["Landmarks"] as? [Double] {
                self.landmarks = value
            }
            if let value = dict["PoseList"] as? [Double] {
                self.poseList = value
            }
            if let value = dict["Pupils"] as? [Double] {
                self.pupils = value
            }
            if let value = dict["Qualities"] as? [String: Any?] {
                var model = DetectFaceResponseBody.Data.Qualities()
                model.fromMap(value)
                self.qualities = model
            }
        }
    }
    public var data: DetectFaceResponseBody.Data?

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
            var model = DetectFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectInfraredLivingFaceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var tasks: [DetectInfraredLivingFaceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DetectInfraredLivingFaceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DetectInfraredLivingFaceRequest.Tasks()
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

public class DetectInfraredLivingFaceAdvanceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
        }
    }
    public var tasks: [DetectInfraredLivingFaceAdvanceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DetectInfraredLivingFaceAdvanceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DetectInfraredLivingFaceAdvanceRequest.Tasks()
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

public class DetectInfraredLivingFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public class Rect : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Int64 {
                            self.height = value
                        }
                        if let value = dict["Left"] as? Int64 {
                            self.left_ = value
                        }
                        if let value = dict["Top"] as? Int64 {
                            self.top = value
                        }
                        if let value = dict["Width"] as? Int64 {
                            self.width = value
                        }
                    }
                }
                public var label: String?

                public var messageTips: String?

                public var rate: Double?

                public var rect: DetectInfraredLivingFaceResponseBody.Data.Elements.Results.Rect?

                public var suggestion: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.rect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.messageTips != nil {
                        map["MessageTips"] = self.messageTips!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.rect != nil {
                        map["Rect"] = self.rect?.toMap()
                    }
                    if self.suggestion != nil {
                        map["Suggestion"] = self.suggestion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["MessageTips"] as? String {
                        self.messageTips = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                    if let value = dict["Rect"] as? [String: Any?] {
                        var model = DetectInfraredLivingFaceResponseBody.Data.Elements.Results.Rect()
                        model.fromMap(value)
                        self.rect = model
                    }
                    if let value = dict["Suggestion"] as? String {
                        self.suggestion = value
                    }
                }
            }
            public var faceNumber: Int64?

            public var imageURL: String?

            public var results: [DetectInfraredLivingFaceResponseBody.Data.Elements.Results]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceNumber != nil {
                    map["FaceNumber"] = self.faceNumber!
                }
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
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
                if let value = dict["FaceNumber"] as? Int64 {
                    self.faceNumber = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [DetectInfraredLivingFaceResponseBody.Data.Elements.Results] = []
                    for v in value {
                        if v != nil {
                            var model = DetectInfraredLivingFaceResponseBody.Data.Elements.Results()
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
        public var elements: [DetectInfraredLivingFaceResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectInfraredLivingFaceResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectInfraredLivingFaceResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: DetectInfraredLivingFaceResponseBody.Data?

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
            var model = DetectInfraredLivingFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectInfraredLivingFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectInfraredLivingFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectInfraredLivingFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectLivingFaceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageData: String?

        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageData"] as? String {
                self.imageData = value
            }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var tasks: [DetectLivingFaceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DetectLivingFaceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DetectLivingFaceRequest.Tasks()
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

public class DetectLivingFaceAdvanceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageData: String?

        public var imageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageData"] as? String {
                self.imageData = value
            }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
        }
    }
    public var tasks: [DetectLivingFaceAdvanceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DetectLivingFaceAdvanceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DetectLivingFaceAdvanceRequest.Tasks()
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

public class DetectLivingFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public class Frames : Tea.TeaModel {
                    public var rate: Double?

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
                        if self.rate != nil {
                            map["Rate"] = self.rate!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Rate"] as? Double {
                            self.rate = value
                        }
                        if let value = dict["Url"] as? String {
                            self.url = value
                        }
                    }
                }
                public class Rect : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Int64 {
                            self.height = value
                        }
                        if let value = dict["Left"] as? Int64 {
                            self.left_ = value
                        }
                        if let value = dict["Top"] as? Int64 {
                            self.top = value
                        }
                        if let value = dict["Width"] as? Int64 {
                            self.width = value
                        }
                    }
                }
                public var frames: [DetectLivingFaceResponseBody.Data.Elements.Results.Frames]?

                public var label: String?

                public var messageTips: String?

                public var rate: Double?

                public var rect: DetectLivingFaceResponseBody.Data.Elements.Results.Rect?

                public var suggestion: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.rect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.frames != nil {
                        var tmp : [Any] = []
                        for k in self.frames! {
                            tmp.append(k.toMap())
                        }
                        map["Frames"] = tmp
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.messageTips != nil {
                        map["MessageTips"] = self.messageTips!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.rect != nil {
                        map["Rect"] = self.rect?.toMap()
                    }
                    if self.suggestion != nil {
                        map["Suggestion"] = self.suggestion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Frames"] as? [Any?] {
                        var tmp : [DetectLivingFaceResponseBody.Data.Elements.Results.Frames] = []
                        for v in value {
                            if v != nil {
                                var model = DetectLivingFaceResponseBody.Data.Elements.Results.Frames()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.frames = tmp
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["MessageTips"] as? String {
                        self.messageTips = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                    if let value = dict["Rect"] as? [String: Any?] {
                        var model = DetectLivingFaceResponseBody.Data.Elements.Results.Rect()
                        model.fromMap(value)
                        self.rect = model
                    }
                    if let value = dict["Suggestion"] as? String {
                        self.suggestion = value
                    }
                }
            }
            public var faceNumber: Int64?

            public var imageURL: String?

            public var results: [DetectLivingFaceResponseBody.Data.Elements.Results]?

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
                if self.faceNumber != nil {
                    map["FaceNumber"] = self.faceNumber!
                }
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.results != nil {
                    var tmp : [Any] = []
                    for k in self.results! {
                        tmp.append(k.toMap())
                    }
                    map["Results"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceNumber"] as? Int64 {
                    self.faceNumber = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [DetectLivingFaceResponseBody.Data.Elements.Results] = []
                    for v in value {
                        if v != nil {
                            var model = DetectLivingFaceResponseBody.Data.Elements.Results()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.results = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var elements: [DetectLivingFaceResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectLivingFaceResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectLivingFaceResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: DetectLivingFaceResponseBody.Data?

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
            var model = DetectLivingFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectLivingFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectLivingFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectLivingFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectPedestrianRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class DetectPedestrianAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class DetectPedestrianResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var boxes: [Int32]?

            public var score: Double?

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
                if self.boxes != nil {
                    map["Boxes"] = self.boxes!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Boxes"] as? [Int32] {
                    self.boxes = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var elements: [DetectPedestrianResponseBody.Data.Elements]?

        public var height: Int32?

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
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectPedestrianResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectPedestrianResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["Height"] as? Int32 {
                self.height = value
            }
            if let value = dict["Width"] as? Int32 {
                self.width = value
            }
        }
    }
    public var data: DetectPedestrianResponseBody.Data?

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
            var model = DetectPedestrianResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectPedestrianResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectPedestrianResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectPedestrianResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectVideoLivingFaceRequest : Tea.TeaModel {
    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class DetectVideoLivingFaceAdvanceRequest : Tea.TeaModel {
    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class DetectVideoLivingFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var faceConfidence: Double?

            public var liveConfidence: Double?

            public var rect: [Int32]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceConfidence != nil {
                    map["FaceConfidence"] = self.faceConfidence!
                }
                if self.liveConfidence != nil {
                    map["LiveConfidence"] = self.liveConfidence!
                }
                if self.rect != nil {
                    map["Rect"] = self.rect!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceConfidence"] as? Double {
                    self.faceConfidence = value
                }
                if let value = dict["LiveConfidence"] as? Double {
                    self.liveConfidence = value
                }
                if let value = dict["Rect"] as? [Int32] {
                    self.rect = value
                }
            }
        }
        public var elements: [DetectVideoLivingFaceResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectVideoLivingFaceResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectVideoLivingFaceResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: DetectVideoLivingFaceResponseBody.Data?

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
            var model = DetectVideoLivingFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectVideoLivingFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectVideoLivingFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectVideoLivingFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnhanceFaceRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class EnhanceFaceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class EnhanceFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: EnhanceFaceResponseBody.Data?

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
            var model = EnhanceFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnhanceFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnhanceFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnhanceFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExtractFingerPrintRequest : Tea.TeaModel {
    public var imageData: String?

    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageData != nil {
            map["ImageData"] = self.imageData!
        }
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageData"] as? String {
            self.imageData = value
        }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class ExtractFingerPrintAdvanceRequest : Tea.TeaModel {
    public var imageData: String?

    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageData != nil {
            map["ImageData"] = self.imageData!
        }
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageData"] as? String {
            self.imageData = value
        }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class ExtractFingerPrintResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fingerPrint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fingerPrint != nil {
                map["FingerPrint"] = self.fingerPrint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FingerPrint"] as? String {
                self.fingerPrint = value
            }
        }
    }
    public var data: ExtractFingerPrintResponseBody.Data?

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
            var model = ExtractFingerPrintResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExtractFingerPrintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExtractFingerPrintResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExtractFingerPrintResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FaceBeautyRequest : Tea.TeaModel {
    public var imageURL: String?

    public var sharp: Double?

    public var smooth: Double?

    public var white: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.sharp != nil {
            map["Sharp"] = self.sharp!
        }
        if self.smooth != nil {
            map["Smooth"] = self.smooth!
        }
        if self.white != nil {
            map["White"] = self.white!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Sharp"] as? Double {
            self.sharp = value
        }
        if let value = dict["Smooth"] as? Double {
            self.smooth = value
        }
        if let value = dict["White"] as? Double {
            self.white = value
        }
    }
}

public class FaceBeautyAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var sharp: Double?

    public var smooth: Double?

    public var white: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.sharp != nil {
            map["Sharp"] = self.sharp!
        }
        if self.smooth != nil {
            map["Smooth"] = self.smooth!
        }
        if self.white != nil {
            map["White"] = self.white!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Sharp"] as? Double {
            self.sharp = value
        }
        if let value = dict["Smooth"] as? Double {
            self.smooth = value
        }
        if let value = dict["White"] as? Double {
            self.white = value
        }
    }
}

public class FaceBeautyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: FaceBeautyResponseBody.Data?

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
            var model = FaceBeautyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class FaceBeautyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceBeautyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FaceBeautyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenRealPersonVerificationTokenRequest : Tea.TeaModel {
    public var certificateName: String?

    public var certificateNumber: String?

    public var metaInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.certificateNumber != nil {
            map["CertificateNumber"] = self.certificateNumber!
        }
        if self.metaInfo != nil {
            map["MetaInfo"] = self.metaInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateName"] as? String {
            self.certificateName = value
        }
        if let value = dict["CertificateNumber"] as? String {
            self.certificateNumber = value
        }
        if let value = dict["MetaInfo"] as? String {
            self.metaInfo = value
        }
    }
}

public class GenRealPersonVerificationTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var verificationToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.verificationToken != nil {
                map["VerificationToken"] = self.verificationToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VerificationToken"] as? String {
                self.verificationToken = value
            }
        }
    }
    public var data: GenRealPersonVerificationTokenResponseBody.Data?

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
            var model = GenRealPersonVerificationTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenRealPersonVerificationTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenRealPersonVerificationTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenRealPersonVerificationTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateHumanAnimeStyleRequest : Tea.TeaModel {
    public var algoType: String?

    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algoType != nil {
            map["AlgoType"] = self.algoType!
        }
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgoType"] as? String {
            self.algoType = value
        }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class GenerateHumanAnimeStyleAdvanceRequest : Tea.TeaModel {
    public var algoType: String?

    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algoType != nil {
            map["AlgoType"] = self.algoType!
        }
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgoType"] as? String {
            self.algoType = value
        }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class GenerateHumanAnimeStyleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: GenerateHumanAnimeStyleResponseBody.Data?

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
            var model = GenerateHumanAnimeStyleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateHumanAnimeStyleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateHumanAnimeStyleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateHumanAnimeStyleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateHumanSketchStyleRequest : Tea.TeaModel {
    public var imageURL: String?

    public var returnType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.returnType != nil {
            map["ReturnType"] = self.returnType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["ReturnType"] as? String {
            self.returnType = value
        }
    }
}

public class GenerateHumanSketchStyleAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var returnType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.returnType != nil {
            map["ReturnType"] = self.returnType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["ReturnType"] as? String {
            self.returnType = value
        }
    }
}

public class GenerateHumanSketchStyleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: GenerateHumanSketchStyleResponseBody.Data?

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
            var model = GenerateHumanSketchStyleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateHumanSketchStyleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateHumanSketchStyleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateHumanSketchStyleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFaceEntityRequest : Tea.TeaModel {
    public var dbName: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
    }
}

public class GetFaceEntityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Faces : Tea.TeaModel {
            public var faceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceId != nil {
                    map["FaceId"] = self.faceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceId"] as? String {
                    self.faceId = value
                }
            }
        }
        public var dbName: String?

        public var entityId: String?

        public var faces: [GetFaceEntityResponseBody.Data.Faces]?

        public var labels: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.faces != nil {
                var tmp : [Any] = []
                for k in self.faces! {
                    tmp.append(k.toMap())
                }
                map["Faces"] = tmp
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["Faces"] as? [Any?] {
                var tmp : [GetFaceEntityResponseBody.Data.Faces] = []
                for v in value {
                    if v != nil {
                        var model = GetFaceEntityResponseBody.Data.Faces()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.faces = tmp
            }
            if let value = dict["Labels"] as? String {
                self.labels = value
            }
        }
    }
    public var data: GetFaceEntityResponseBody.Data?

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
            var model = GetFaceEntityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFaceEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFaceEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFaceEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRealPersonVerificationResultRequest : Tea.TeaModel {
    public var verificationToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.verificationToken != nil {
            map["VerificationToken"] = self.verificationToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VerificationToken"] as? String {
            self.verificationToken = value
        }
    }
}

public class GetRealPersonVerificationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var passed: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Passed"] as? Bool {
                self.passed = value
            }
        }
    }
    public var data: GetRealPersonVerificationResultResponseBody.Data?

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
            var model = GetRealPersonVerificationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRealPersonVerificationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealPersonVerificationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRealPersonVerificationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LiquifyFaceRequest : Tea.TeaModel {
    public var imageURL: String?

    public var slimDegree: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.slimDegree != nil {
            map["SlimDegree"] = self.slimDegree!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["SlimDegree"] as? Double {
            self.slimDegree = value
        }
    }
}

public class LiquifyFaceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var slimDegree: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.slimDegree != nil {
            map["SlimDegree"] = self.slimDegree!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["SlimDegree"] as? Double {
            self.slimDegree = value
        }
    }
}

public class LiquifyFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: LiquifyFaceResponseBody.Data?

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
            var model = LiquifyFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class LiquifyFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LiquifyFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LiquifyFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFaceDbsRequest : Tea.TeaModel {
    public var limit: Int64?

    public var offset: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Offset"] as? Int64 {
            self.offset = value
        }
    }
}

public class ListFaceDbsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DbList : Tea.TeaModel {
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var dbList: [ListFaceDbsResponseBody.Data.DbList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbList != nil {
                var tmp : [Any] = []
                for k in self.dbList! {
                    tmp.append(k.toMap())
                }
                map["DbList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbList"] as? [Any?] {
                var tmp : [ListFaceDbsResponseBody.Data.DbList] = []
                for v in value {
                    if v != nil {
                        var model = ListFaceDbsResponseBody.Data.DbList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dbList = tmp
            }
        }
    }
    public var data: ListFaceDbsResponseBody.Data?

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
            var model = ListFaceDbsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFaceDbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFaceDbsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFaceDbsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFaceEntitiesRequest : Tea.TeaModel {
    public var dbName: String?

    public var entityIdPrefix: String?

    public var labels: String?

    public var limit: Int32?

    public var offset: Int32?

    public var order: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityIdPrefix != nil {
            map["EntityIdPrefix"] = self.entityIdPrefix!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityIdPrefix"] as? String {
            self.entityIdPrefix = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class ListFaceEntitiesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Entities : Tea.TeaModel {
            public var createdAt: Int64?

            public var dbName: String?

            public var entityId: String?

            public var faceCount: Int32?

            public var labels: String?

            public var updatedAt: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.faceCount != nil {
                    map["FaceCount"] = self.faceCount!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatedAt"] as? Int64 {
                    self.createdAt = value
                }
                if let value = dict["DbName"] as? String {
                    self.dbName = value
                }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["FaceCount"] as? Int32 {
                    self.faceCount = value
                }
                if let value = dict["Labels"] as? String {
                    self.labels = value
                }
                if let value = dict["UpdatedAt"] as? Int64 {
                    self.updatedAt = value
                }
            }
        }
        public var entities: [ListFaceEntitiesResponseBody.Data.Entities]?

        public var token: String?

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
            if self.entities != nil {
                var tmp : [Any] = []
                for k in self.entities! {
                    tmp.append(k.toMap())
                }
                map["Entities"] = tmp
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Entities"] as? [Any?] {
                var tmp : [ListFaceEntitiesResponseBody.Data.Entities] = []
                for v in value {
                    if v != nil {
                        var model = ListFaceEntitiesResponseBody.Data.Entities()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.entities = tmp
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: ListFaceEntitiesResponseBody.Data?

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
            var model = ListFaceEntitiesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFaceEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFaceEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFaceEntitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MergeImageFaceRequest : Tea.TeaModel {
    public class MergeInfos : Tea.TeaModel {
        public var imageURL: String?

        public var templateFaceID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            if self.templateFaceID != nil {
                map["TemplateFaceID"] = self.templateFaceID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
            if let value = dict["TemplateFaceID"] as? String {
                self.templateFaceID = value
            }
        }
    }
    public var addWatermark: Bool?

    public var imageURL: String?

    public var mergeInfos: [MergeImageFaceRequest.MergeInfos]?

    public var modelVersion: String?

    public var templateId: String?

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
        if self.addWatermark != nil {
            map["AddWatermark"] = self.addWatermark!
        }
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.mergeInfos != nil {
            var tmp : [Any] = []
            for k in self.mergeInfos! {
                tmp.append(k.toMap())
            }
            map["MergeInfos"] = tmp
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWatermark"] as? Bool {
            self.addWatermark = value
        }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["MergeInfos"] as? [Any?] {
            var tmp : [MergeImageFaceRequest.MergeInfos] = []
            for v in value {
                if v != nil {
                    var model = MergeImageFaceRequest.MergeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mergeInfos = tmp
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class MergeImageFaceAdvanceRequest : Tea.TeaModel {
    public class MergeInfos : Tea.TeaModel {
        public var imageURL: String?

        public var templateFaceID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            if self.templateFaceID != nil {
                map["TemplateFaceID"] = self.templateFaceID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
            if let value = dict["TemplateFaceID"] as? String {
                self.templateFaceID = value
            }
        }
    }
    public var addWatermark: Bool?

    public var imageURLObject: InputStream?

    public var mergeInfos: [MergeImageFaceAdvanceRequest.MergeInfos]?

    public var modelVersion: String?

    public var templateId: String?

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
        if self.addWatermark != nil {
            map["AddWatermark"] = self.addWatermark!
        }
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.mergeInfos != nil {
            var tmp : [Any] = []
            for k in self.mergeInfos! {
                tmp.append(k.toMap())
            }
            map["MergeInfos"] = tmp
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWatermark"] as? Bool {
            self.addWatermark = value
        }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["MergeInfos"] as? [Any?] {
            var tmp : [MergeImageFaceAdvanceRequest.MergeInfos] = []
            for v in value {
                if v != nil {
                    var model = MergeImageFaceAdvanceRequest.MergeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mergeInfos = tmp
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class MergeImageFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: MergeImageFaceResponseBody.Data?

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
            var model = MergeImageFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MergeImageFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MergeImageFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MergeImageFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MonitorExaminationRequest : Tea.TeaModel {
    public var imageURL: String?

    public var type: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Type"] as? Int64 {
            self.type = value
        }
    }
}

public class MonitorExaminationAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var type: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Type"] as? Int64 {
            self.type = value
        }
    }
}

public class MonitorExaminationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FaceInfo : Tea.TeaModel {
            public class Pose : Tea.TeaModel {
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
            public var completeness: Double?

            public var faceNumber: Int64?

            public var pose: MonitorExaminationResponseBody.Data.FaceInfo.Pose?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.pose?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completeness != nil {
                    map["Completeness"] = self.completeness!
                }
                if self.faceNumber != nil {
                    map["FaceNumber"] = self.faceNumber!
                }
                if self.pose != nil {
                    map["Pose"] = self.pose?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Completeness"] as? Double {
                    self.completeness = value
                }
                if let value = dict["FaceNumber"] as? Int64 {
                    self.faceNumber = value
                }
                if let value = dict["Pose"] as? [String: Any?] {
                    var model = MonitorExaminationResponseBody.Data.FaceInfo.Pose()
                    model.fromMap(value)
                    self.pose = model
                }
            }
        }
        public class PersonInfo : Tea.TeaModel {
            public class CellPhone : Tea.TeaModel {
                public var score: Double?

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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.threshold != nil {
                        map["Threshold"] = self.threshold!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["Threshold"] as? Double {
                        self.threshold = value
                    }
                }
            }
            public class EarPhone : Tea.TeaModel {
                public var score: Double?

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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.threshold != nil {
                        map["Threshold"] = self.threshold!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["Threshold"] as? Double {
                        self.threshold = value
                    }
                }
            }
            public var cellPhone: MonitorExaminationResponseBody.Data.PersonInfo.CellPhone?

            public var earPhone: MonitorExaminationResponseBody.Data.PersonInfo.EarPhone?

            public var personNumber: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cellPhone?.validate()
                try self.earPhone?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cellPhone != nil {
                    map["CellPhone"] = self.cellPhone?.toMap()
                }
                if self.earPhone != nil {
                    map["EarPhone"] = self.earPhone?.toMap()
                }
                if self.personNumber != nil {
                    map["PersonNumber"] = self.personNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CellPhone"] as? [String: Any?] {
                    var model = MonitorExaminationResponseBody.Data.PersonInfo.CellPhone()
                    model.fromMap(value)
                    self.cellPhone = model
                }
                if let value = dict["EarPhone"] as? [String: Any?] {
                    var model = MonitorExaminationResponseBody.Data.PersonInfo.EarPhone()
                    model.fromMap(value)
                    self.earPhone = model
                }
                if let value = dict["PersonNumber"] as? Int64 {
                    self.personNumber = value
                }
            }
        }
        public var chatScore: Double?

        public var faceInfo: MonitorExaminationResponseBody.Data.FaceInfo?

        public var personInfo: MonitorExaminationResponseBody.Data.PersonInfo?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.faceInfo?.validate()
            try self.personInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chatScore != nil {
                map["ChatScore"] = self.chatScore!
            }
            if self.faceInfo != nil {
                map["FaceInfo"] = self.faceInfo?.toMap()
            }
            if self.personInfo != nil {
                map["PersonInfo"] = self.personInfo?.toMap()
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChatScore"] as? Double {
                self.chatScore = value
            }
            if let value = dict["FaceInfo"] as? [String: Any?] {
                var model = MonitorExaminationResponseBody.Data.FaceInfo()
                model.fromMap(value)
                self.faceInfo = model
            }
            if let value = dict["PersonInfo"] as? [String: Any?] {
                var model = MonitorExaminationResponseBody.Data.PersonInfo()
                model.fromMap(value)
                self.personInfo = model
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var data: MonitorExaminationResponseBody.Data?

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
            var model = MonitorExaminationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MonitorExaminationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MonitorExaminationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MonitorExaminationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PedestrianDetectAttributeRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class PedestrianDetectAttributeAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class PedestrianDetectAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public class Age : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Backpack : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Gender : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Glasses : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Handbag : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Hat : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class LowerColor : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class LowerWear : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Orient : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class ShoulderBag : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class UpperColor : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class UpperWear : Tea.TeaModel {
                public var name: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public var age: PedestrianDetectAttributeResponseBody.Data.Attributes.Age?

            public var backpack: PedestrianDetectAttributeResponseBody.Data.Attributes.Backpack?

            public var gender: PedestrianDetectAttributeResponseBody.Data.Attributes.Gender?

            public var glasses: PedestrianDetectAttributeResponseBody.Data.Attributes.Glasses?

            public var handbag: PedestrianDetectAttributeResponseBody.Data.Attributes.Handbag?

            public var hat: PedestrianDetectAttributeResponseBody.Data.Attributes.Hat?

            public var lowerColor: PedestrianDetectAttributeResponseBody.Data.Attributes.LowerColor?

            public var lowerWear: PedestrianDetectAttributeResponseBody.Data.Attributes.LowerWear?

            public var orient: PedestrianDetectAttributeResponseBody.Data.Attributes.Orient?

            public var shoulderBag: PedestrianDetectAttributeResponseBody.Data.Attributes.ShoulderBag?

            public var upperColor: PedestrianDetectAttributeResponseBody.Data.Attributes.UpperColor?

            public var upperWear: PedestrianDetectAttributeResponseBody.Data.Attributes.UpperWear?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.age?.validate()
                try self.backpack?.validate()
                try self.gender?.validate()
                try self.glasses?.validate()
                try self.handbag?.validate()
                try self.hat?.validate()
                try self.lowerColor?.validate()
                try self.lowerWear?.validate()
                try self.orient?.validate()
                try self.shoulderBag?.validate()
                try self.upperColor?.validate()
                try self.upperWear?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.age != nil {
                    map["Age"] = self.age?.toMap()
                }
                if self.backpack != nil {
                    map["Backpack"] = self.backpack?.toMap()
                }
                if self.gender != nil {
                    map["Gender"] = self.gender?.toMap()
                }
                if self.glasses != nil {
                    map["Glasses"] = self.glasses?.toMap()
                }
                if self.handbag != nil {
                    map["Handbag"] = self.handbag?.toMap()
                }
                if self.hat != nil {
                    map["Hat"] = self.hat?.toMap()
                }
                if self.lowerColor != nil {
                    map["LowerColor"] = self.lowerColor?.toMap()
                }
                if self.lowerWear != nil {
                    map["LowerWear"] = self.lowerWear?.toMap()
                }
                if self.orient != nil {
                    map["Orient"] = self.orient?.toMap()
                }
                if self.shoulderBag != nil {
                    map["ShoulderBag"] = self.shoulderBag?.toMap()
                }
                if self.upperColor != nil {
                    map["UpperColor"] = self.upperColor?.toMap()
                }
                if self.upperWear != nil {
                    map["UpperWear"] = self.upperWear?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Age"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Age()
                    model.fromMap(value)
                    self.age = model
                }
                if let value = dict["Backpack"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Backpack()
                    model.fromMap(value)
                    self.backpack = model
                }
                if let value = dict["Gender"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Gender()
                    model.fromMap(value)
                    self.gender = model
                }
                if let value = dict["Glasses"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Glasses()
                    model.fromMap(value)
                    self.glasses = model
                }
                if let value = dict["Handbag"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Handbag()
                    model.fromMap(value)
                    self.handbag = model
                }
                if let value = dict["Hat"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Hat()
                    model.fromMap(value)
                    self.hat = model
                }
                if let value = dict["LowerColor"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.LowerColor()
                    model.fromMap(value)
                    self.lowerColor = model
                }
                if let value = dict["LowerWear"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.LowerWear()
                    model.fromMap(value)
                    self.lowerWear = model
                }
                if let value = dict["Orient"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.Orient()
                    model.fromMap(value)
                    self.orient = model
                }
                if let value = dict["ShoulderBag"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.ShoulderBag()
                    model.fromMap(value)
                    self.shoulderBag = model
                }
                if let value = dict["UpperColor"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.UpperColor()
                    model.fromMap(value)
                    self.upperColor = model
                }
                if let value = dict["UpperWear"] as? [String: Any?] {
                    var model = PedestrianDetectAttributeResponseBody.Data.Attributes.UpperWear()
                    model.fromMap(value)
                    self.upperWear = model
                }
            }
        }
        public class Boxes : Tea.TeaModel {
            public var bottomRightX: Double?

            public var bottomRightY: Double?

            public var score: Double?

            public var topLeftX: Double?

            public var topLeftY: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bottomRightX != nil {
                    map["BottomRightX"] = self.bottomRightX!
                }
                if self.bottomRightY != nil {
                    map["BottomRightY"] = self.bottomRightY!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.topLeftX != nil {
                    map["TopLeftX"] = self.topLeftX!
                }
                if self.topLeftY != nil {
                    map["TopLeftY"] = self.topLeftY!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BottomRightX"] as? Double {
                    self.bottomRightX = value
                }
                if let value = dict["BottomRightY"] as? Double {
                    self.bottomRightY = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["TopLeftX"] as? Double {
                    self.topLeftX = value
                }
                if let value = dict["TopLeftY"] as? Double {
                    self.topLeftY = value
                }
            }
        }
        public var attributes: [PedestrianDetectAttributeResponseBody.Data.Attributes]?

        public var boxes: [PedestrianDetectAttributeResponseBody.Data.Boxes]?

        public var height: Int64?

        public var personNumber: Int32?

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
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.boxes != nil {
                var tmp : [Any] = []
                for k in self.boxes! {
                    tmp.append(k.toMap())
                }
                map["Boxes"] = tmp
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.personNumber != nil {
                map["PersonNumber"] = self.personNumber!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [Any?] {
                var tmp : [PedestrianDetectAttributeResponseBody.Data.Attributes] = []
                for v in value {
                    if v != nil {
                        var model = PedestrianDetectAttributeResponseBody.Data.Attributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributes = tmp
            }
            if let value = dict["Boxes"] as? [Any?] {
                var tmp : [PedestrianDetectAttributeResponseBody.Data.Boxes] = []
                for v in value {
                    if v != nil {
                        var model = PedestrianDetectAttributeResponseBody.Data.Boxes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.boxes = tmp
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["PersonNumber"] as? Int32 {
                self.personNumber = value
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
        }
    }
    public var data: PedestrianDetectAttributeResponseBody.Data?

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
            var model = PedestrianDetectAttributeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PedestrianDetectAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PedestrianDetectAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PedestrianDetectAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceImageTemplateRequest : Tea.TeaModel {
    public var pageNo: Int64?

    public var pageSize: Int64?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class QueryFaceImageTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class FaceInfos : Tea.TeaModel {
                public class FaceRect : Tea.TeaModel {
                    public var height: String?

                    public var width: String?

                    public var x: String?

                    public var y: String?

                    public override init() {
                        super.init()
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
                        if let value = dict["Height"] as? String {
                            self.height = value
                        }
                        if let value = dict["Width"] as? String {
                            self.width = value
                        }
                        if let value = dict["X"] as? String {
                            self.x = value
                        }
                        if let value = dict["Y"] as? String {
                            self.y = value
                        }
                    }
                }
                public var faceRect: QueryFaceImageTemplateResponseBody.Data.Elements.FaceInfos.FaceRect?

                public var templateFaceID: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.faceRect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.faceRect != nil {
                        map["FaceRect"] = self.faceRect?.toMap()
                    }
                    if self.templateFaceID != nil {
                        map["TemplateFaceID"] = self.templateFaceID!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FaceRect"] as? [String: Any?] {
                        var model = QueryFaceImageTemplateResponseBody.Data.Elements.FaceInfos.FaceRect()
                        model.fromMap(value)
                        self.faceRect = model
                    }
                    if let value = dict["TemplateFaceID"] as? String {
                        self.templateFaceID = value
                    }
                }
            }
            public var createTime: String?

            public var faceInfos: [QueryFaceImageTemplateResponseBody.Data.Elements.FaceInfos]?

            public var templateId: String?

            public var templateURL: String?

            public var updateTime: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.faceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.faceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["FaceInfos"] = tmp
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateURL != nil {
                    map["TemplateURL"] = self.templateURL!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FaceInfos"] as? [Any?] {
                    var tmp : [QueryFaceImageTemplateResponseBody.Data.Elements.FaceInfos] = []
                    for v in value {
                        if v != nil {
                            var model = QueryFaceImageTemplateResponseBody.Data.Elements.FaceInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.faceInfos = tmp
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateURL"] as? String {
                    self.templateURL = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var elements: [QueryFaceImageTemplateResponseBody.Data.Elements]?

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
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [QueryFaceImageTemplateResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceImageTemplateResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var data: QueryFaceImageTemplateResponseBody.Data?

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
            var model = QueryFaceImageTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryFaceImageTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceImageTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryFaceImageTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeActionRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public var imageData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            if self.imageData != nil {
                map["imageData"] = self.imageData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
            if let value = dict["imageData"] as? String {
                self.imageData = value
            }
        }
    }
    public var type: Int32?

    public var URLList: [RecognizeActionRequest.URLList]?

    public var videoData: String?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        if self.videoData != nil {
            map["VideoData"] = self.videoData!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [RecognizeActionRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = RecognizeActionRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
        if let value = dict["VideoData"] as? String {
            self.videoData = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class RecognizeActionAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public var imageData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            if self.imageData != nil {
                map["imageData"] = self.imageData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
            if let value = dict["imageData"] as? String {
                self.imageData = value
            }
        }
    }
    public var type: Int32?

    public var URLList: [RecognizeActionAdvanceRequest.URLList]?

    public var videoData: String?

    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        if self.videoData != nil {
            map["VideoData"] = self.videoData!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [RecognizeActionAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = RecognizeActionAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
        if let value = dict["VideoData"] as? String {
            self.videoData = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class RecognizeActionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Boxes : Tea.TeaModel {
                public var box: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.box != nil {
                        map["Box"] = self.box!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Box"] as? [Int32] {
                        self.box = value
                    }
                }
            }
            public var boxes: [RecognizeActionResponseBody.Data.Elements.Boxes]?

            public var labels: [String]?

            public var scores: [Double]?

            public var timestamp: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.boxes != nil {
                    var tmp : [Any] = []
                    for k in self.boxes! {
                        tmp.append(k.toMap())
                    }
                    map["Boxes"] = tmp
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.scores != nil {
                    map["Scores"] = self.scores!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Boxes"] as? [Any?] {
                    var tmp : [RecognizeActionResponseBody.Data.Elements.Boxes] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeActionResponseBody.Data.Elements.Boxes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.boxes = tmp
                }
                if let value = dict["Labels"] as? [String] {
                    self.labels = value
                }
                if let value = dict["Scores"] as? [Double] {
                    self.scores = value
                }
                if let value = dict["Timestamp"] as? Int32 {
                    self.timestamp = value
                }
            }
        }
        public var elements: [RecognizeActionResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [RecognizeActionResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeActionResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: RecognizeActionResponseBody.Data?

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
            var model = RecognizeActionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeActionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecognizeActionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeExpressionRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeExpressionAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeExpressionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class FaceRectangle : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Height"] as? Int32 {
                        self.height = value
                    }
                    if let value = dict["Left"] as? Int32 {
                        self.left_ = value
                    }
                    if let value = dict["Top"] as? Int32 {
                        self.top = value
                    }
                    if let value = dict["Width"] as? Int32 {
                        self.width = value
                    }
                }
            }
            public var expression: String?

            public var faceProbability: Double?

            public var faceRectangle: RecognizeExpressionResponseBody.Data.Elements.FaceRectangle?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceRectangle?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.faceProbability != nil {
                    map["FaceProbability"] = self.faceProbability!
                }
                if self.faceRectangle != nil {
                    map["FaceRectangle"] = self.faceRectangle?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["FaceProbability"] as? Double {
                    self.faceProbability = value
                }
                if let value = dict["FaceRectangle"] as? [String: Any?] {
                    var model = RecognizeExpressionResponseBody.Data.Elements.FaceRectangle()
                    model.fromMap(value)
                    self.faceRectangle = model
                }
            }
        }
        public var elements: [RecognizeExpressionResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [RecognizeExpressionResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeExpressionResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: RecognizeExpressionResponseBody.Data?

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
            var model = RecognizeExpressionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeExpressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeExpressionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecognizeExpressionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeFaceRequest : Tea.TeaModel {
    public var age: Bool?

    public var beauty: Bool?

    public var expression: Bool?

    public var gender: Bool?

    public var glass: Bool?

    public var hat: Bool?

    public var imageURL: String?

    public var mask: Bool?

    public var maxFaceNumber: Int64?

    public var quality: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.age != nil {
            map["Age"] = self.age!
        }
        if self.beauty != nil {
            map["Beauty"] = self.beauty!
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.glass != nil {
            map["Glass"] = self.glass!
        }
        if self.hat != nil {
            map["Hat"] = self.hat!
        }
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.maxFaceNumber != nil {
            map["MaxFaceNumber"] = self.maxFaceNumber!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Age"] as? Bool {
            self.age = value
        }
        if let value = dict["Beauty"] as? Bool {
            self.beauty = value
        }
        if let value = dict["Expression"] as? Bool {
            self.expression = value
        }
        if let value = dict["Gender"] as? Bool {
            self.gender = value
        }
        if let value = dict["Glass"] as? Bool {
            self.glass = value
        }
        if let value = dict["Hat"] as? Bool {
            self.hat = value
        }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Mask"] as? Bool {
            self.mask = value
        }
        if let value = dict["MaxFaceNumber"] as? Int64 {
            self.maxFaceNumber = value
        }
        if let value = dict["Quality"] as? Bool {
            self.quality = value
        }
    }
}

public class RecognizeFaceAdvanceRequest : Tea.TeaModel {
    public var age: Bool?

    public var beauty: Bool?

    public var expression: Bool?

    public var gender: Bool?

    public var glass: Bool?

    public var hat: Bool?

    public var imageURLObject: InputStream?

    public var mask: Bool?

    public var maxFaceNumber: Int64?

    public var quality: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.age != nil {
            map["Age"] = self.age!
        }
        if self.beauty != nil {
            map["Beauty"] = self.beauty!
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.glass != nil {
            map["Glass"] = self.glass!
        }
        if self.hat != nil {
            map["Hat"] = self.hat!
        }
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.maxFaceNumber != nil {
            map["MaxFaceNumber"] = self.maxFaceNumber!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Age"] as? Bool {
            self.age = value
        }
        if let value = dict["Beauty"] as? Bool {
            self.beauty = value
        }
        if let value = dict["Expression"] as? Bool {
            self.expression = value
        }
        if let value = dict["Gender"] as? Bool {
            self.gender = value
        }
        if let value = dict["Glass"] as? Bool {
            self.glass = value
        }
        if let value = dict["Hat"] as? Bool {
            self.hat = value
        }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Mask"] as? Bool {
            self.mask = value
        }
        if let value = dict["MaxFaceNumber"] as? Int64 {
            self.maxFaceNumber = value
        }
        if let value = dict["Quality"] as? Bool {
            self.quality = value
        }
    }
}

public class RecognizeFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Qualities : Tea.TeaModel {
            public var blurList: [Double]?

            public var fnfList: [Double]?

            public var glassList: [Double]?

            public var illuList: [Double]?

            public var maskList: [Double]?

            public var noiseList: [Double]?

            public var poseList: [Double]?

            public var scoreList: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blurList != nil {
                    map["BlurList"] = self.blurList!
                }
                if self.fnfList != nil {
                    map["FnfList"] = self.fnfList!
                }
                if self.glassList != nil {
                    map["GlassList"] = self.glassList!
                }
                if self.illuList != nil {
                    map["IlluList"] = self.illuList!
                }
                if self.maskList != nil {
                    map["MaskList"] = self.maskList!
                }
                if self.noiseList != nil {
                    map["NoiseList"] = self.noiseList!
                }
                if self.poseList != nil {
                    map["PoseList"] = self.poseList!
                }
                if self.scoreList != nil {
                    map["ScoreList"] = self.scoreList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlurList"] as? [Double] {
                    self.blurList = value
                }
                if let value = dict["FnfList"] as? [Double] {
                    self.fnfList = value
                }
                if let value = dict["GlassList"] as? [Double] {
                    self.glassList = value
                }
                if let value = dict["IlluList"] as? [Double] {
                    self.illuList = value
                }
                if let value = dict["MaskList"] as? [Double] {
                    self.maskList = value
                }
                if let value = dict["NoiseList"] as? [Double] {
                    self.noiseList = value
                }
                if let value = dict["PoseList"] as? [Double] {
                    self.poseList = value
                }
                if let value = dict["ScoreList"] as? [Double] {
                    self.scoreList = value
                }
            }
        }
        public var ageList: [Int32]?

        public var beautyList: [Double]?

        public var denseFeatureLength: Int32?

        public var denseFeatures: [String]?

        public var expressions: [Int32]?

        public var faceCount: Int32?

        public var faceProbabilityList: [Double]?

        public var faceRectangles: [Int32]?

        public var genderList: [Int32]?

        public var glasses: [Int32]?

        public var hatList: [Int32]?

        public var landmarkCount: Int32?

        public var landmarks: [Double]?

        public var masks: [Int64]?

        public var poseList: [Double]?

        public var pupils: [Double]?

        public var qualities: RecognizeFaceResponseBody.Data.Qualities?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.qualities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ageList != nil {
                map["AgeList"] = self.ageList!
            }
            if self.beautyList != nil {
                map["BeautyList"] = self.beautyList!
            }
            if self.denseFeatureLength != nil {
                map["DenseFeatureLength"] = self.denseFeatureLength!
            }
            if self.denseFeatures != nil {
                map["DenseFeatures"] = self.denseFeatures!
            }
            if self.expressions != nil {
                map["Expressions"] = self.expressions!
            }
            if self.faceCount != nil {
                map["FaceCount"] = self.faceCount!
            }
            if self.faceProbabilityList != nil {
                map["FaceProbabilityList"] = self.faceProbabilityList!
            }
            if self.faceRectangles != nil {
                map["FaceRectangles"] = self.faceRectangles!
            }
            if self.genderList != nil {
                map["GenderList"] = self.genderList!
            }
            if self.glasses != nil {
                map["Glasses"] = self.glasses!
            }
            if self.hatList != nil {
                map["HatList"] = self.hatList!
            }
            if self.landmarkCount != nil {
                map["LandmarkCount"] = self.landmarkCount!
            }
            if self.landmarks != nil {
                map["Landmarks"] = self.landmarks!
            }
            if self.masks != nil {
                map["Masks"] = self.masks!
            }
            if self.poseList != nil {
                map["PoseList"] = self.poseList!
            }
            if self.pupils != nil {
                map["Pupils"] = self.pupils!
            }
            if self.qualities != nil {
                map["Qualities"] = self.qualities?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgeList"] as? [Int32] {
                self.ageList = value
            }
            if let value = dict["BeautyList"] as? [Double] {
                self.beautyList = value
            }
            if let value = dict["DenseFeatureLength"] as? Int32 {
                self.denseFeatureLength = value
            }
            if let value = dict["DenseFeatures"] as? [String] {
                self.denseFeatures = value
            }
            if let value = dict["Expressions"] as? [Int32] {
                self.expressions = value
            }
            if let value = dict["FaceCount"] as? Int32 {
                self.faceCount = value
            }
            if let value = dict["FaceProbabilityList"] as? [Double] {
                self.faceProbabilityList = value
            }
            if let value = dict["FaceRectangles"] as? [Int32] {
                self.faceRectangles = value
            }
            if let value = dict["GenderList"] as? [Int32] {
                self.genderList = value
            }
            if let value = dict["Glasses"] as? [Int32] {
                self.glasses = value
            }
            if let value = dict["HatList"] as? [Int32] {
                self.hatList = value
            }
            if let value = dict["LandmarkCount"] as? Int32 {
                self.landmarkCount = value
            }
            if let value = dict["Landmarks"] as? [Double] {
                self.landmarks = value
            }
            if let value = dict["Masks"] as? [Int64] {
                self.masks = value
            }
            if let value = dict["PoseList"] as? [Double] {
                self.poseList = value
            }
            if let value = dict["Pupils"] as? [Double] {
                self.pupils = value
            }
            if let value = dict["Qualities"] as? [String: Any?] {
                var model = RecognizeFaceResponseBody.Data.Qualities()
                model.fromMap(value)
                self.qualities = model
            }
        }
    }
    public var data: RecognizeFaceResponseBody.Data?

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
            var model = RecognizeFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecognizeFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizePublicFaceRequest : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var imageData: String?

        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageData"] as? String {
                self.imageData = value
            }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var task: [RecognizePublicFaceRequest.Task]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.task != nil {
            var tmp : [Any] = []
            for k in self.task! {
                tmp.append(k.toMap())
            }
            map["Task"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Task"] as? [Any?] {
            var tmp : [RecognizePublicFaceRequest.Task] = []
            for v in value {
                if v != nil {
                    var model = RecognizePublicFaceRequest.Task()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.task = tmp
        }
    }
}

public class RecognizePublicFaceAdvanceRequest : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var imageData: String?

        public var imageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageData"] as? String {
                self.imageData = value
            }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
        }
    }
    public var task: [RecognizePublicFaceAdvanceRequest.Task]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.task != nil {
            var tmp : [Any] = []
            for k in self.task! {
                tmp.append(k.toMap())
            }
            map["Task"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Task"] as? [Any?] {
            var tmp : [RecognizePublicFaceAdvanceRequest.Task] = []
            for v in value {
                if v != nil {
                    var model = RecognizePublicFaceAdvanceRequest.Task()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.task = tmp
        }
    }
}

public class RecognizePublicFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public class SubResults : Tea.TeaModel {
                    public class Faces : Tea.TeaModel {
                        public var id: String?

                        public var name: String?

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
                            if self.id != nil {
                                map["Id"] = self.id!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.rate != nil {
                                map["Rate"] = self.rate!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Id"] as? String {
                                self.id = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Rate"] as? Double {
                                self.rate = value
                            }
                        }
                    }
                    public var faces: [RecognizePublicFaceResponseBody.Data.Elements.Results.SubResults.Faces]?

                    public var h: Double?

                    public var w: Double?

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
                        if self.faces != nil {
                            var tmp : [Any] = []
                            for k in self.faces! {
                                tmp.append(k.toMap())
                            }
                            map["Faces"] = tmp
                        }
                        if self.h != nil {
                            map["H"] = self.h!
                        }
                        if self.w != nil {
                            map["W"] = self.w!
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
                        if let value = dict["Faces"] as? [Any?] {
                            var tmp : [RecognizePublicFaceResponseBody.Data.Elements.Results.SubResults.Faces] = []
                            for v in value {
                                if v != nil {
                                    var model = RecognizePublicFaceResponseBody.Data.Elements.Results.SubResults.Faces()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.faces = tmp
                        }
                        if let value = dict["H"] as? Double {
                            self.h = value
                        }
                        if let value = dict["W"] as? Double {
                            self.w = value
                        }
                        if let value = dict["X"] as? Double {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Double {
                            self.y = value
                        }
                    }
                }
                public var label: String?

                public var rate: Double?

                public var subResults: [RecognizePublicFaceResponseBody.Data.Elements.Results.SubResults]?

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
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.subResults != nil {
                        var tmp : [Any] = []
                        for k in self.subResults! {
                            tmp.append(k.toMap())
                        }
                        map["SubResults"] = tmp
                    }
                    if self.suggestion != nil {
                        map["Suggestion"] = self.suggestion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                    if let value = dict["SubResults"] as? [Any?] {
                        var tmp : [RecognizePublicFaceResponseBody.Data.Elements.Results.SubResults] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizePublicFaceResponseBody.Data.Elements.Results.SubResults()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.subResults = tmp
                    }
                    if let value = dict["Suggestion"] as? String {
                        self.suggestion = value
                    }
                }
            }
            public var imageURL: String?

            public var results: [RecognizePublicFaceResponseBody.Data.Elements.Results]?

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
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.results != nil {
                    var tmp : [Any] = []
                    for k in self.results! {
                        tmp.append(k.toMap())
                    }
                    map["Results"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [RecognizePublicFaceResponseBody.Data.Elements.Results] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizePublicFaceResponseBody.Data.Elements.Results()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.results = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var elements: [RecognizePublicFaceResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [RecognizePublicFaceResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = RecognizePublicFaceResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: RecognizePublicFaceResponseBody.Data?

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
            var model = RecognizePublicFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizePublicFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizePublicFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecognizePublicFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetouchSkinRequest : Tea.TeaModel {
    public var imageURL: String?

    public var retouchDegree: Double?

    public var whiteningDegree: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.retouchDegree != nil {
            map["RetouchDegree"] = self.retouchDegree!
        }
        if self.whiteningDegree != nil {
            map["WhiteningDegree"] = self.whiteningDegree!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["RetouchDegree"] as? Double {
            self.retouchDegree = value
        }
        if let value = dict["WhiteningDegree"] as? Double {
            self.whiteningDegree = value
        }
    }
}

public class RetouchSkinAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var retouchDegree: Double?

    public var whiteningDegree: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.retouchDegree != nil {
            map["RetouchDegree"] = self.retouchDegree!
        }
        if self.whiteningDegree != nil {
            map["WhiteningDegree"] = self.whiteningDegree!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["RetouchDegree"] as? Double {
            self.retouchDegree = value
        }
        if let value = dict["WhiteningDegree"] as? Double {
            self.whiteningDegree = value
        }
    }
}

public class RetouchSkinResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: RetouchSkinResponseBody.Data?

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
            var model = RetouchSkinResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RetouchSkinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetouchSkinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetouchSkinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchFaceRequest : Tea.TeaModel {
    public var dbName: String?

    public var dbNames: String?

    public var imageUrl: String?

    public var limit: Int32?

    public var maxFaceNum: Int64?

    public var qualityScoreThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbNames != nil {
            map["DbNames"] = self.dbNames!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.maxFaceNum != nil {
            map["MaxFaceNum"] = self.maxFaceNum!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DbNames"] as? String {
            self.dbNames = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["MaxFaceNum"] as? Int64 {
            self.maxFaceNum = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
    }
}

public class SearchFaceAdvanceRequest : Tea.TeaModel {
    public var dbName: String?

    public var dbNames: String?

    public var imageUrlObject: InputStream?

    public var limit: Int32?

    public var maxFaceNum: Int64?

    public var qualityScoreThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbNames != nil {
            map["DbNames"] = self.dbNames!
        }
        if self.imageUrlObject != nil {
            map["ImageUrl"] = self.imageUrlObject!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.maxFaceNum != nil {
            map["MaxFaceNum"] = self.maxFaceNum!
        }
        if self.qualityScoreThreshold != nil {
            map["QualityScoreThreshold"] = self.qualityScoreThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DbNames"] as? String {
            self.dbNames = value
        }
        if let value = dict["ImageUrl"] as? InputStream {
            self.imageUrlObject = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["MaxFaceNum"] as? Int64 {
            self.maxFaceNum = value
        }
        if let value = dict["QualityScoreThreshold"] as? Double {
            self.qualityScoreThreshold = value
        }
    }
}

public class SearchFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MatchList : Tea.TeaModel {
            public class FaceItems : Tea.TeaModel {
                public var confidence: Double?

                public var dbName: String?

                public var entityId: String?

                public var extraData: String?

                public var faceId: String?

                public var score: Double?

                public override init() {
                    super.init()
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
                    if self.dbName != nil {
                        map["DbName"] = self.dbName!
                    }
                    if self.entityId != nil {
                        map["EntityId"] = self.entityId!
                    }
                    if self.extraData != nil {
                        map["ExtraData"] = self.extraData!
                    }
                    if self.faceId != nil {
                        map["FaceId"] = self.faceId!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["DbName"] as? String {
                        self.dbName = value
                    }
                    if let value = dict["EntityId"] as? String {
                        self.entityId = value
                    }
                    if let value = dict["ExtraData"] as? String {
                        self.extraData = value
                    }
                    if let value = dict["FaceId"] as? String {
                        self.faceId = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Location : Tea.TeaModel {
                public var height: Int32?

                public var width: Int32?

                public var x: Int32?

                public var y: Int32?

                public override init() {
                    super.init()
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
                    if let value = dict["Height"] as? Int32 {
                        self.height = value
                    }
                    if let value = dict["Width"] as? Int32 {
                        self.width = value
                    }
                    if let value = dict["X"] as? Int32 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int32 {
                        self.y = value
                    }
                }
            }
            public var faceItems: [SearchFaceResponseBody.Data.MatchList.FaceItems]?

            public var location: SearchFaceResponseBody.Data.MatchList.Location?

            public var qualitieScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.location?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceItems != nil {
                    var tmp : [Any] = []
                    for k in self.faceItems! {
                        tmp.append(k.toMap())
                    }
                    map["FaceItems"] = tmp
                }
                if self.location != nil {
                    map["Location"] = self.location?.toMap()
                }
                if self.qualitieScore != nil {
                    map["QualitieScore"] = self.qualitieScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceItems"] as? [Any?] {
                    var tmp : [SearchFaceResponseBody.Data.MatchList.FaceItems] = []
                    for v in value {
                        if v != nil {
                            var model = SearchFaceResponseBody.Data.MatchList.FaceItems()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.faceItems = tmp
                }
                if let value = dict["Location"] as? [String: Any?] {
                    var model = SearchFaceResponseBody.Data.MatchList.Location()
                    model.fromMap(value)
                    self.location = model
                }
                if let value = dict["QualitieScore"] as? Double {
                    self.qualitieScore = value
                }
            }
        }
        public var matchList: [SearchFaceResponseBody.Data.MatchList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.matchList != nil {
                var tmp : [Any] = []
                for k in self.matchList! {
                    tmp.append(k.toMap())
                }
                map["MatchList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MatchList"] as? [Any?] {
                var tmp : [SearchFaceResponseBody.Data.MatchList] = []
                for v in value {
                    if v != nil {
                        var model = SearchFaceResponseBody.Data.MatchList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.matchList = tmp
            }
        }
    }
    public var data: SearchFaceResponseBody.Data?

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
            var model = SearchFaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SearchFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchFaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFaceEntityRequest : Tea.TeaModel {
    public var dbName: String?

    public var entityId: String?

    public var labels: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
    }
}

public class UpdateFaceEntityResponseBody : Tea.TeaModel {
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

public class UpdateFaceEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFaceEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFaceEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
