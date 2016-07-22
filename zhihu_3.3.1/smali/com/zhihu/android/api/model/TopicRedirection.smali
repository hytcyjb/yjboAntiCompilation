.class public Lcom/zhihu/android/api/model/TopicRedirection;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "TopicRedirection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/TopicRedirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public from:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "from"
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

.field public to:Lcom/zhihu/android/api/model/Topic;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "to"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/zhihu/android/api/model/TopicRedirection$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/TopicRedirection$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/TopicRedirection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhihu/android/api/model/TopicRedirection;->from:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/zhihu/android/api/model/TopicRedirection;->to:Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method
