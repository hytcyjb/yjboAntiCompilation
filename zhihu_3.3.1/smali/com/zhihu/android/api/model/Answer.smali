.class public Lcom/zhihu/android/api/model/Answer;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Answer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "author"
    .end annotation
.end field

.field public belongsQuestion:Lcom/zhihu/android/api/model/Question;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question"
    .end annotation
.end field

.field public commentCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment_count"
    .end annotation
.end field

.field public commentPermission:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment_permission"
    .end annotation
.end field

.field public commentStatus:Lcom/zhihu/android/api/model/CommentStatus;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "can_comment"
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field public createdTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "created_time"
    .end annotation
.end field

.field public excerpt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "excerpt"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public isCopyable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_copyable"
    .end annotation
.end field

.field public isMine:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_mine"
    .end annotation
.end field

.field public relationship:Lcom/zhihu/android/api/model/Relationship;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "relationship"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "suggest_edit"
    .end annotation
.end field

.field public updatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated_time"
    .end annotation
.end field

.field public voteUpCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voteup_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/zhihu/android/api/model/Answer$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Answer$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Answer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 147
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->id:J

    .line 151
    const-class v0, Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->excerpt:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    .line 154
    const-class v0, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->author:Lcom/zhihu/android/api/model/People;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->commentCount:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->voteUpCount:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->createdTime:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->updatedTime:J

    .line 159
    const-class v0, Lcom/zhihu/android/api/model/Relationship;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Relationship;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->relationship:Lcom/zhihu/android/api/model/Relationship;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->commentPermission:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->createdTime:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->updatedTime:J

    .line 164
    const-class v0, Lcom/zhihu/android/api/model/CommentStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/CommentStatus;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->commentStatus:Lcom/zhihu/android/api/model/CommentStatus;

    .line 165
    const-class v0, Lcom/zhihu/android/api/model/SuggestEdit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/SuggestEdit;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Answer;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/zhihu/android/api/model/Answer;->isCopyable:Z

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v1, v2

    .line 166
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->excerpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->commentCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->voteUpCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->createdTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->updatedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->relationship:Lcom/zhihu/android/api/model/Relationship;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->commentPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->createdTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->updatedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->commentStatus:Lcom/zhihu/android/api/model/CommentStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Lcom/zhihu/android/api/model/Answer;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Answer;->isCopyable:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    :cond_1
    move v1, v2

    .line 142
    goto :goto_1
.end method
