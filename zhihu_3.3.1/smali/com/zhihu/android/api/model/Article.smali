.class public Lcom/zhihu/android/api/model/Article;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Article.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Article;",
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

.field public column:Lcom/zhihu/android/api/model/Column;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "column"
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
        value = "created"
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

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image_url"
    .end annotation
.end field

.field public isAuthorFollower:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_author_follower"
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

.field public updatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated"
    .end annotation
.end field

.field public votedownCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "votedown_count"
    .end annotation
.end field

.field public voteupCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voteup_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/zhihu/android/api/model/Article$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Article$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Article;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Article;->id:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->title:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->imageUrl:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->excerpt:Ljava/lang/String;

    .line 119
    const-class v0, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->author:Lcom/zhihu/android/api/model/People;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Article;->commentCount:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Article;->voteupCount:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Article;->votedownCount:J

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Article;->createdTime:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Article;->updatedTime:J

    .line 127
    const-class v0, Lcom/zhihu/android/api/model/CommentStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/CommentStatus;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->commentStatus:Lcom/zhihu/android/api/model/CommentStatus;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->commentPermission:Ljava/lang/String;

    .line 129
    const-class v0, Lcom/zhihu/android/api/model/SuggestEdit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/SuggestEdit;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Article;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    .line 130
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getColumn()Lcom/zhihu/android/api/model/Column;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->column:Lcom/zhihu/android/api/model/Column;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Article;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->excerpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Article;->commentCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Article;->voteupCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Article;->votedownCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Article;->createdTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Article;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->commentStatus:Lcom/zhihu/android/api/model/CommentStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->commentPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/api/model/Article;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    return-void
.end method
