.class public Lcom/zhihu/android/api/model/Topic;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Topic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Topic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "avatar_url"
    .end annotation
.end field

.field public bestAnswerersCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "best_answerers_count"
    .end annotation
.end field

.field public bestAnswersCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "best_answers_count"
    .end annotation
.end field

.field public excerpt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "excerpt"
    .end annotation
.end field

.field public experience:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "experience"
    .end annotation
.end field

.field public fatherCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "father_count"
    .end annotation
.end field

.field public followersCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "followers_count"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public introduction:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "introduction"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_following"
    .end annotation
.end field

.field public meta:Lcom/zhihu/android/api/model/Meta;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "meta"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field public questionsCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "questions_count"
    .end annotation
.end field

.field public topicRedirection:Lcom/zhihu/android/api/model/TopicRedirection;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirection"
    .end annotation
.end field

.field public unansweredCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "unanswered_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/zhihu/android/api/model/Topic$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Topic$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Topic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 102
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->id:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->avatarUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->type:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->excerpt:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->experience:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->introduction:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->url:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->bestAnswersCount:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->followersCount:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->questionsCount:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->unansweredCount:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->fatherCount:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->bestAnswerersCount:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Topic;->isFollowing:Z

    .line 120
    const-class v0, Lcom/zhihu/android/api/model/TopicRedirection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/TopicRedirection;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->topicRedirection:Lcom/zhihu/android/api/model/TopicRedirection;

    .line 121
    const-class v0, Lcom/zhihu/android/api/model/Meta;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Meta;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Topic;->meta:Lcom/zhihu/android/api/model/Meta;

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->excerpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->experience:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->introduction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->bestAnswersCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->followersCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->questionsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->unansweredCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->fatherCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Topic;->bestAnswerersCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Topic;->isFollowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->topicRedirection:Lcom/zhihu/android/api/model/TopicRedirection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lcom/zhihu/android/api/model/Topic;->meta:Lcom/zhihu/android/api/model/Meta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
