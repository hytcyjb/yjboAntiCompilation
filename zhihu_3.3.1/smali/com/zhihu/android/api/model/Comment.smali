.class public Lcom/zhihu/android/api/model/Comment;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Comment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowDelete:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "allow_delete"
    .end annotation
.end field

.field public allowReply:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "allow_reply"
    .end annotation
.end field

.field public allowVote:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "allow_like"
    .end annotation
.end field

.field public author:Lcom/zhihu/android/api/model/Author;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "author"
    .end annotation
.end field

.field public commentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "resource_type"
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

.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public replyCount:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "replies_count"
    .end annotation
.end field

.field public replyTo:Lcom/zhihu/android/api/model/Author;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "reply_to_author"
    .end annotation
.end field

.field public voteCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "vote_count"
    .end annotation
.end field

.field public voting:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voting"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/zhihu/android/api/model/Comment$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Comment$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
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

    .line 73
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Comment;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object v0, p0, Lcom/zhihu/android/api/model/Comment;->author:Lcom/zhihu/android/api/model/Author;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget-object v0, p0, Lcom/zhihu/android/api/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Comment;->voteCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Comment;->voting:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Comment;->createdTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Comment;->allowDelete:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Comment;->allowReply:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Comment;->allowVote:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget-object v0, p0, Lcom/zhihu/android/api/model/Comment;->commentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v0, v2

    .line 79
    goto :goto_1

    :cond_2
    move v0, v2

    .line 80
    goto :goto_2

    :cond_3
    move v1, v2

    .line 81
    goto :goto_3
.end method
