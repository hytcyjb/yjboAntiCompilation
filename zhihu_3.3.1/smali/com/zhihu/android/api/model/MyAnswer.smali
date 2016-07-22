.class public Lcom/zhihu/android/api/model/MyAnswer;
.super Ljava/lang/Object;
.source "MyAnswer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/MyAnswer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public answerId:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_id"
    .end annotation
.end field

.field public isDeleted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_deleted"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/zhihu/android/api/model/MyAnswer$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/MyAnswer$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/MyAnswer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/MyAnswer;->answerId:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/MyAnswer;->isDeleted:Z

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/zhihu/android/api/model/MyAnswer;->answerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/MyAnswer;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
