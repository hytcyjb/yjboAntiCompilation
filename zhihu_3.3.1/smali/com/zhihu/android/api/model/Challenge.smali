.class public Lcom/zhihu/android/api/model/Challenge;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Challenge.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Challenge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public challengeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "challenge_type"
    .end annotation
.end field

.field public hint:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/zhihu/android/api/model/Challenge$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Challenge$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Challenge;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Challenge;->challengeType:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Challenge;->hint:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhihu/android/api/model/Challenge;->challengeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/zhihu/android/api/model/Challenge;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
