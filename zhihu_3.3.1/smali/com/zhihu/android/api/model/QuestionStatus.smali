.class public Lcom/zhihu/android/api/model/QuestionStatus;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "QuestionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/QuestionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isClosed:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_close"
    .end annotation
.end field

.field public isDelete:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_delete"
    .end annotation
.end field

.field public isEvaluate:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_evaluate"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_locked"
    .end annotation
.end field

.field public isMuted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_muted"
    .end annotation
.end field

.field public isSuggest:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_suggest"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/zhihu/android/api/model/QuestionStatus$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/QuestionStatus$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/QuestionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isLocked:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isClosed:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isMuted:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isSuggest:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isEvaluate:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isDelete:Z

    .line 73
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    :cond_1
    move v0, v2

    .line 68
    goto :goto_1

    :cond_2
    move v0, v2

    .line 69
    goto :goto_2

    :cond_3
    move v0, v2

    .line 70
    goto :goto_3

    :cond_4
    move v0, v2

    .line 71
    goto :goto_4

    :cond_5
    move v1, v2

    .line 72
    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isLocked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isClosed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isMuted:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isSuggest:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isEvaluate:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/QuestionStatus;->isDelete:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1

    :cond_2
    move v0, v2

    .line 56
    goto :goto_2

    :cond_3
    move v0, v2

    .line 57
    goto :goto_3

    :cond_4
    move v0, v2

    .line 58
    goto :goto_4

    :cond_5
    move v1, v2

    .line 59
    goto :goto_5
.end method
