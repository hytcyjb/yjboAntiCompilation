.class public Lcom/zhihu/android/api/model/RoundTable;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "RoundTable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/RoundTable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public banner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "banner"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field public followers:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "followers"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_following"
    .end annotation
.end field

.field public logo:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "logo"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field public startTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "start_time"
    .end annotation
.end field

.field public stopTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "stop_time"
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

.field public visits:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "visits"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/zhihu/android/api/model/RoundTable$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/RoundTable$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/RoundTable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->id:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->logo:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->banner:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/zhihu/android/api/model/Topic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->topics:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->description:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->startTime:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->stopTime:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/RoundTable;->isFollowing:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->visits:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->followers:J

    .line 78
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->banner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->topics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/api/model/RoundTable;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->stopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/RoundTable;->isFollowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->visits:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-wide v0, p0, Lcom/zhihu/android/api/model/RoundTable;->followers:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
