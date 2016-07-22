.class public Lcom/zhihu/android/api/model/CommentStatus;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "CommentStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/CommentStatus;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/zhihu/android/api/model/CommentStatus$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/CommentStatus$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/CommentStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhihu/android/api/model/CommentStatus;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/CommentStatus;->status:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
