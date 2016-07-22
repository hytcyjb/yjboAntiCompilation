.class public Lcom/zhihu/android/api/model/SuggestEdit;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "SuggestEdit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/SuggestEdit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "reason"
    .end annotation
.end field

.field public status:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "status"
    .end annotation
.end field

.field public tip:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "tip"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/zhihu/android/api/model/SuggestEdit$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/SuggestEdit$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/SuggestEdit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->status:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->reason:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->tip:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->title:Ljava/lang/String;

    .line 61
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->status:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->tip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/zhihu/android/api/model/SuggestEdit;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
