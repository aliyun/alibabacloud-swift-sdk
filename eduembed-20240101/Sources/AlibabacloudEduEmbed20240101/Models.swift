import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateLabReservationRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var endTime: String?

    public var labId: Int64?

    public var memberCount: Int64?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.labId != nil {
            map["LabId"] = self.labId!
        }
        if self.memberCount != nil {
            map["MemberCount"] = self.memberCount!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["LabId"] as? Int64 {
            self.labId = value
        }
        if let value = dict["MemberCount"] as? Int64 {
            self.memberCount = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class CreateLabReservationResponseBody : Tea.TeaModel {
    public class LabReservation : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var labReservation: CreateLabReservationResponseBody.LabReservation?

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
        try self.labReservation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labReservation != nil {
            map["LabReservation"] = self.labReservation?.toMap()
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
        if let value = dict["LabReservation"] as? [String: Any?] {
            var model = CreateLabReservationResponseBody.LabReservation()
            model.fromMap(value)
            self.labReservation = model
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

public class CreateLabReservationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLabReservationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLabReservationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLabSessionRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var labId: Int64?

    public var ramAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.labId != nil {
            map["LabId"] = self.labId!
        }
        if self.ramAccountId != nil {
            map["RamAccountId"] = self.ramAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["LabId"] as? Int64 {
            self.labId = value
        }
        if let value = dict["RamAccountId"] as? Int64 {
            self.ramAccountId = value
        }
    }
}

public class CreateLabSessionResponseBody : Tea.TeaModel {
    public class LabSession : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var labSession: CreateLabSessionResponseBody.LabSession?

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
        try self.labSession?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labSession != nil {
            map["LabSession"] = self.labSession?.toMap()
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
        if let value = dict["LabSession"] as? [String: Any?] {
            var model = CreateLabSessionResponseBody.LabSession()
            model.fromMap(value)
            self.labSession = model
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

public class CreateLabSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLabSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLabSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCourseRequest : Tea.TeaModel {
    public var courseId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.courseId != nil {
            map["CourseId"] = self.courseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CourseId"] as? Int64 {
            self.courseId = value
        }
    }
}

public class DescribeCourseResponseBody : Tea.TeaModel {
    public class Course : Tea.TeaModel {
        public class Chapters : Tea.TeaModel {
            public class Lessons : Tea.TeaModel {
                public var duration: Int32?

                public var id: Int64?

                public var title: String?

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
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Duration"] as? Int32 {
                        self.duration = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class Unit : Tea.TeaModel {
                public class Lessons : Tea.TeaModel {
                    public var duration: Int32?

                    public var id: Int64?

                    public var title: String?

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
                        if self.duration != nil {
                            map["Duration"] = self.duration!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Duration"] as? Int32 {
                            self.duration = value
                        }
                        if let value = dict["Id"] as? Int64 {
                            self.id = value
                        }
                        if let value = dict["Title"] as? String {
                            self.title = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var lessons: [DescribeCourseResponseBody.Course.Chapters.Unit.Lessons]?

                public var number: Int32?

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
                    if self.lessons != nil {
                        var tmp : [Any] = []
                        for k in self.lessons! {
                            tmp.append(k.toMap())
                        }
                        map["Lessons"] = tmp
                    }
                    if self.number != nil {
                        map["Number"] = self.number!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Lessons"] as? [Any?] {
                        var tmp : [DescribeCourseResponseBody.Course.Chapters.Unit.Lessons] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeCourseResponseBody.Course.Chapters.Unit.Lessons()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lessons = tmp
                    }
                    if let value = dict["Number"] as? Int32 {
                        self.number = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public var lessons: [DescribeCourseResponseBody.Course.Chapters.Lessons]?

            public var number: Int32?

            public var title: String?

            public var unit: [DescribeCourseResponseBody.Course.Chapters.Unit]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lessons != nil {
                    var tmp : [Any] = []
                    for k in self.lessons! {
                        tmp.append(k.toMap())
                    }
                    map["Lessons"] = tmp
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.unit != nil {
                    var tmp : [Any] = []
                    for k in self.unit! {
                        tmp.append(k.toMap())
                    }
                    map["Unit"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lessons"] as? [Any?] {
                    var tmp : [DescribeCourseResponseBody.Course.Chapters.Lessons] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCourseResponseBody.Course.Chapters.Lessons()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.lessons = tmp
                }
                if let value = dict["Number"] as? Int32 {
                    self.number = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Unit"] as? [Any?] {
                    var tmp : [DescribeCourseResponseBody.Course.Chapters.Unit] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCourseResponseBody.Course.Chapters.Unit()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.unit = tmp
                }
            }
        }
        public class Lessons : Tea.TeaModel {
            public var duration: Int32?

            public var id: Int64?

            public var title: String?

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
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var category: String?

        public var chapters: [DescribeCourseResponseBody.Course.Chapters]?

        public var id: String?

        public var introduction: String?

        public var lessonNum: Int32?

        public var lessons: [DescribeCourseResponseBody.Course.Lessons]?

        public var pictureUrl: String?

        public var tags: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.chapters != nil {
                var tmp : [Any] = []
                for k in self.chapters! {
                    tmp.append(k.toMap())
                }
                map["Chapters"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.lessonNum != nil {
                map["LessonNum"] = self.lessonNum!
            }
            if self.lessons != nil {
                var tmp : [Any] = []
                for k in self.lessons! {
                    tmp.append(k.toMap())
                }
                map["Lessons"] = tmp
            }
            if self.pictureUrl != nil {
                map["PictureUrl"] = self.pictureUrl!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Chapters"] as? [Any?] {
                var tmp : [DescribeCourseResponseBody.Course.Chapters] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCourseResponseBody.Course.Chapters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.chapters = tmp
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["LessonNum"] as? Int32 {
                self.lessonNum = value
            }
            if let value = dict["Lessons"] as? [Any?] {
                var tmp : [DescribeCourseResponseBody.Course.Lessons] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCourseResponseBody.Course.Lessons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lessons = tmp
            }
            if let value = dict["PictureUrl"] as? String {
                self.pictureUrl = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: String?

    public var course: DescribeCourseResponseBody.Course?

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
        try self.course?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.course != nil {
            map["Course"] = self.course?.toMap()
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
        if let value = dict["Course"] as? [String: Any?] {
            var model = DescribeCourseResponseBody.Course()
            model.fromMap(value)
            self.course = model
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

public class DescribeCourseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCourseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCourseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCourseLessonRequest : Tea.TeaModel {
    public var lessonId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lessonId != nil {
            map["LessonId"] = self.lessonId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LessonId"] as? Int64 {
            self.lessonId = value
        }
    }
}

public class DescribeCourseLessonResponseBody : Tea.TeaModel {
    public class CourseLesson : Tea.TeaModel {
        public var content: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var courseLesson: DescribeCourseLessonResponseBody.CourseLesson?

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
        try self.courseLesson?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.courseLesson != nil {
            map["CourseLesson"] = self.courseLesson?.toMap()
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
        if let value = dict["CourseLesson"] as? [String: Any?] {
            var model = DescribeCourseLessonResponseBody.CourseLesson()
            model.fromMap(value)
            self.courseLesson = model
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

public class DescribeCourseLessonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCourseLessonResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCourseLessonResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLabRequest : Tea.TeaModel {
    public var labId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labId != nil {
            map["LabId"] = self.labId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabId"] as? Int64 {
            self.labId = value
        }
    }
}

public class DescribeLabResponseBody : Tea.TeaModel {
    public class Lab : Tea.TeaModel {
        public var duration: Int64?

        public var id: Int64?

        public var introduction: String?

        public var subTitle: String?

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
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.subTitle != nil {
                map["SubTitle"] = self.subTitle!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["SubTitle"] as? String {
                self.subTitle = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: String?

    public var lab: DescribeLabResponseBody.Lab?

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
        try self.lab?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.lab != nil {
            map["Lab"] = self.lab?.toMap()
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
        if let value = dict["Lab"] as? [String: Any?] {
            var model = DescribeLabResponseBody.Lab()
            model.fromMap(value)
            self.lab = model
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

public class DescribeLabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLabResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLabResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLabReservationRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var labReservationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.labReservationId != nil {
            map["LabReservationId"] = self.labReservationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["LabReservationId"] as? String {
            self.labReservationId = value
        }
    }
}

public class DescribeLabReservationResponseBody : Tea.TeaModel {
    public class LabReservation : Tea.TeaModel {
        public var accountId: Int64?

        public var endTime: String?

        public var id: String?

        public var memberCount: Int64?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? Int64 {
                self.accountId = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["MemberCount"] as? Int64 {
                self.memberCount = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var code: String?

    public var labReservation: DescribeLabReservationResponseBody.LabReservation?

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
        try self.labReservation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labReservation != nil {
            map["LabReservation"] = self.labReservation?.toMap()
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
        if let value = dict["LabReservation"] as? [String: Any?] {
            var model = DescribeLabReservationResponseBody.LabReservation()
            model.fromMap(value)
            self.labReservation = model
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

public class DescribeLabReservationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLabReservationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLabReservationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLabSessionRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var labSessionId: String?

    public var ramAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.labSessionId != nil {
            map["LabSessionId"] = self.labSessionId!
        }
        if self.ramAccountId != nil {
            map["RamAccountId"] = self.ramAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["LabSessionId"] as? String {
            self.labSessionId = value
        }
        if let value = dict["RamAccountId"] as? Int64 {
            self.ramAccountId = value
        }
    }
}

public class DescribeLabSessionResponseBody : Tea.TeaModel {
    public class LabSession : Tea.TeaModel {
        public var createTime: String?

        public var finished: Bool?

        public var id: String?

        public var labId: Int64?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.finished != nil {
                map["Finished"] = self.finished!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.labId != nil {
                map["LabId"] = self.labId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["LabId"] as? Int64 {
                self.labId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var labSession: DescribeLabSessionResponseBody.LabSession?

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
        try self.labSession?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labSession != nil {
            map["LabSession"] = self.labSession?.toMap()
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
        if let value = dict["LabSession"] as? [String: Any?] {
            var model = DescribeLabSessionResponseBody.LabSession()
            model.fromMap(value)
            self.labSession = model
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

public class DescribeLabSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLabSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLabSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCoursesRequest : Tea.TeaModel {
    public var id: [Int64]?

    public var page: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? [Int64] {
            self.id = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListCoursesResponseBody : Tea.TeaModel {
    public class Courses : Tea.TeaModel {
        public var category: String?

        public var id: String?

        public var introduction: String?

        public var lessonNum: Int32?

        public var pictureUrl: String?

        public var tags: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.lessonNum != nil {
                map["LessonNum"] = self.lessonNum!
            }
            if self.pictureUrl != nil {
                map["PictureUrl"] = self.pictureUrl!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["LessonNum"] as? Int32 {
                self.lessonNum = value
            }
            if let value = dict["PictureUrl"] as? String {
                self.pictureUrl = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: String?

    public var courses: [ListCoursesResponseBody.Courses]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.courses != nil {
            var tmp : [Any] = []
            for k in self.courses! {
                tmp.append(k.toMap())
            }
            map["Courses"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.page != nil {
            map["Page"] = self.page!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Courses"] as? [Any?] {
            var tmp : [ListCoursesResponseBody.Courses] = []
            for v in value {
                if v != nil {
                    var model = ListCoursesResponseBody.Courses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.courses = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCoursesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCoursesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCoursesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageListLabReservationsRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var page: Int64?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class PageListLabReservationsResponseBody : Tea.TeaModel {
    public class LabReservations : Tea.TeaModel {
        public var accountId: Int64?

        public var endTime: String?

        public var id: String?

        public var memberCount: Int64?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? Int64 {
                self.accountId = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["MemberCount"] as? Int64 {
                self.memberCount = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var code: String?

    public var labReservations: [PageListLabReservationsResponseBody.LabReservations]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labReservations != nil {
            var tmp : [Any] = []
            for k in self.labReservations! {
                tmp.append(k.toMap())
            }
            map["LabReservations"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.page != nil {
            map["Page"] = self.page!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["LabReservations"] as? [Any?] {
            var tmp : [PageListLabReservationsResponseBody.LabReservations] = []
            for v in value {
                if v != nil {
                    var model = PageListLabReservationsResponseBody.LabReservations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labReservations = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class PageListLabReservationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageListLabReservationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PageListLabReservationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageListLabSessionsRequest : Tea.TeaModel {
    public var finished: Bool?

    public var labId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var ramAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finished != nil {
            map["Finished"] = self.finished!
        }
        if self.labId != nil {
            map["LabId"] = self.labId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ramAccountId != nil {
            map["RamAccountId"] = self.ramAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Finished"] as? Bool {
            self.finished = value
        }
        if let value = dict["LabId"] as? Int64 {
            self.labId = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RamAccountId"] as? Int64 {
            self.ramAccountId = value
        }
    }
}

public class PageListLabSessionsResponseBody : Tea.TeaModel {
    public class LabSessions : Tea.TeaModel {
        public var createTime: String?

        public var finished: Bool?

        public var id: String?

        public var labId: Int64?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.finished != nil {
                map["Finished"] = self.finished!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.labId != nil {
                map["LabId"] = self.labId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["LabId"] as? Int64 {
                self.labId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var labSessions: [PageListLabSessionsResponseBody.LabSessions]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labSessions != nil {
            var tmp : [Any] = []
            for k in self.labSessions! {
                tmp.append(k.toMap())
            }
            map["LabSessions"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.page != nil {
            map["Page"] = self.page!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["LabSessions"] as? [Any?] {
            var tmp : [PageListLabSessionsResponseBody.LabSessions] = []
            for v in value {
                if v != nil {
                    var model = PageListLabSessionsResponseBody.LabSessions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labSessions = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class PageListLabSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageListLabSessionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PageListLabSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageListLabsRequest : Tea.TeaModel {
    public var id: [Int64]?

    public var page: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? [Int64] {
            self.id = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class PageListLabsResponseBody : Tea.TeaModel {
    public class Labs : Tea.TeaModel {
        public var duration: Int64?

        public var id: Int64?

        public var introduction: String?

        public var subTitle: String?

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
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.subTitle != nil {
                map["SubTitle"] = self.subTitle!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["SubTitle"] as? String {
                self.subTitle = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: String?

    public var labs: [PageListLabsResponseBody.Labs]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.labs != nil {
            var tmp : [Any] = []
            for k in self.labs! {
                tmp.append(k.toMap())
            }
            map["Labs"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.page != nil {
            map["Page"] = self.page!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Labs"] as? [Any?] {
            var tmp : [PageListLabsResponseBody.Labs] = []
            for v in value {
                if v != nil {
                    var model = PageListLabsResponseBody.Labs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labs = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class PageListLabsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageListLabsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PageListLabsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveLabReservationRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var labReservationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.labReservationId != nil {
            map["LabReservationId"] = self.labReservationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["LabReservationId"] as? String {
            self.labReservationId = value
        }
    }
}

public class RemoveLabReservationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
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
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveLabReservationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveLabReservationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveLabReservationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
