.class public Lcom/zhihu/android/api/model/Question;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Question.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Question;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public answerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_count"
    .end annotation
.end field

.field public answers:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field

.field public author:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "author"
    .end annotation
.end field

.field public commentCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment_count"
    .end annotation
.end field

.field public detail:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "detail"
    .end annotation
.end field

.field public draft:Lcom/zhihu/android/api/model/Draft;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "draft"
    .end annotation
.end field

.field public excerpt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "excerpt"
    .end annotation
.end field

.field public followerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "follower_count"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public relationship:Lcom/zhihu/android/api/model/Relationship;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "relationship"
    .end annotation
.end field

.field public status:Lcom/zhihu/android/api/model/QuestionStatus;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "status"
    .end annotation
.end field

.field public suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "suggest_edit"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field

.field public topic:Lcom/zhihu/android/api/model/Topic;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "topic"
    .end annotation
.end field

.field public topics:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "topics"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Topic;",
            ">;"
        }
    .end annotation
.end field

.field public updatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/zhihu/android/api/model/Question$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Question$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Question;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->title:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->excerpt:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->detail:Ljava/lang/String;

    .line 115
    const-class v0, Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->topic:Lcom/zhihu/android/api/model/Topic;

    .line 116
    sget-object v0, Lcom/zhihu/android/api/model/Topic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    .line 117
    sget-object v0, Lcom/zhihu/android/api/model/Answer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->answers:Ljava/util/List;

    .line 118
    const-class v0, Lcom/zhihu/android/api/model/Draft;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Draft;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->draft:Lcom/zhihu/android/api/model/Draft;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Question;->updatedTime:J

    .line 120
    const-class v0, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->author:Lcom/zhihu/android/api/model/People;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Question;->commentCount:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Question;->answerCount:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Question;->followerCount:J

    .line 125
    const-class v0, Lcom/zhihu/android/api/model/Relationship;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Relationship;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->relationship:Lcom/zhihu/android/api/model/Relationship;

    .line 126
    const-class v0, Lcom/zhihu/android/api/model/QuestionStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/QuestionStatus;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    .line 127
    const-class v0, Lcom/zhihu/android/api/model/SuggestEdit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/SuggestEdit;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Question;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    .line 128
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Question;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->excerpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->detail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->topic:Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->answers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->draft:Lcom/zhihu/android/api/model/Draft;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Question;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Question;->commentCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Question;->answerCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Question;->followerCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->relationship:Lcom/zhihu/android/api/model/Relationship;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    iget-object v0, p0, Lcom/zhihu/android/api/model/Question;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    return-void
.end method
