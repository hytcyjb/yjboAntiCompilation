.class public Lcom/zhihu/android/api/model/Draft;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Draft.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Draft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field public createdTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "created_time"
    .end annotation
.end field

.field public draftQuestion:Lcom/zhihu/android/api/model/Question;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question"
    .end annotation
.end field

.field public excerpt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "excerpt"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/zhihu/android/api/model/Draft$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Draft$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Draft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Draft;->excerpt:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Draft;->content:Ljava/lang/String;

    .line 68
    const-class v0, Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Draft;->url:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Draft;->createdTime:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Draft;->type:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhihu/android/api/model/Draft;->excerpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/zhihu/android/api/model/Draft;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v0, p0, Lcom/zhihu/android/api/model/Draft;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Draft;->createdTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-object v0, p0, Lcom/zhihu/android/api/model/Draft;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
