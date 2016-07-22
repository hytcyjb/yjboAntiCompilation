.class public Lcom/zhihu/android/api/model/Redirection;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Redirection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Redirection;",
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
            "Lcom/zhihu/android/api/model/Question;",
            ">;"
        }
    .end annotation
.end field

.field public to:Lcom/zhihu/android/api/model/Question;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "to"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/zhihu/android/api/model/Redirection$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Redirection$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Redirection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 50
    sget-object v0, Lcom/zhihu/android/api/model/Question;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Redirection;->from:Ljava/util/List;

    .line 51
    const-class v0, Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Redirection;->to:Lcom/zhihu/android/api/model/Question;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhihu/android/api/model/Redirection;->from:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lcom/zhihu/android/api/model/Redirection;->to:Lcom/zhihu/android/api/model/Question;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
