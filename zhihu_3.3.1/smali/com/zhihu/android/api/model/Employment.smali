.class public Lcom/zhihu/android/api/model/Employment;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Employment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Employment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public company:Lcom/zhihu/android/api/model/Topic;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "company"
    .end annotation
.end field

.field public job:Lcom/zhihu/android/api/model/Topic;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "job"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/zhihu/android/api/model/Employment$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Employment$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Employment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 49
    const-class v0, Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Employment;->company:Lcom/zhihu/android/api/model/Topic;

    .line 50
    const-class v0, Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Employment;->job:Lcom/zhihu/android/api/model/Topic;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/zhihu/android/api/model/Employment;->company:Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v0, p0, Lcom/zhihu/android/api/model/Employment;->job:Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
