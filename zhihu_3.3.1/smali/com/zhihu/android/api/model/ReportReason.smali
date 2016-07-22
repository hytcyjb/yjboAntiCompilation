.class public Lcom/zhihu/android/api/model/ReportReason;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ReportReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "code"
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "reason"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/zhihu/android/api/model/ReportReason$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/ReportReason$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/ReportReason;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReason;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/zhihu/android/api/model/ReportReason;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
