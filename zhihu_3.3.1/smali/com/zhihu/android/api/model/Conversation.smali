.class public Lcom/zhihu/android/api/model/Conversation;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Conversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Conversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowReply:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "allow_reply"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public isReplied:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_replied"
    .end annotation
.end field

.field public messageCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "message_count"
    .end annotation
.end field

.field public participant:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "participant"
    .end annotation
.end field

.field public snippet:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "snippet"
    .end annotation
.end field

.field public unreadCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "unread_count"
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
    .line 70
    new-instance v0, Lcom/zhihu/android/api/model/Conversation$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Conversation$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/zhihu/android/api/model/Conversation;

    if-eqz v1, :cond_0

    .line 102
    check-cast p1, Lcom/zhihu/android/api/model/Conversation;

    .line 105
    iget-object v1, p0, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    iget-object v2, p1, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v1, v2}, Lcom/zhihu/android/api/model/People;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/zhihu/android/api/model/Conversation;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/zhihu/android/api/model/Conversation;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Conversation;->isReplied:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Conversation;->allowReply:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Conversation;->messageCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Conversation;->unreadCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Conversation;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 63
    goto :goto_0

    :cond_1
    move v1, v2

    .line 64
    goto :goto_1
.end method
