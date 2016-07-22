.class public Lcom/zhihu/android/api/model/Message;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/api/model/ZHObject;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/zhihu/android/api/model/Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public receiver:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "receiver"
    .end annotation
.end field

.field public sender:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sender"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/zhihu/android/api/model/Message$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Message$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

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
.method public compareTo(Lcom/zhihu/android/api/model/Message;)I
    .locals 4
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Message;->createdTime:J

    iget-wide v2, p1, Lcom/zhihu/android/api/model/Message;->createdTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/zhihu/android/api/model/Message;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/api/model/Message;->compareTo(Lcom/zhihu/android/api/model/Message;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/zhihu/android/api/model/Message;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/zhihu/android/api/model/Message;->sender:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    iget-object v0, p0, Lcom/zhihu/android/api/model/Message;->receiver:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Message;->createdTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    return-void
.end method
