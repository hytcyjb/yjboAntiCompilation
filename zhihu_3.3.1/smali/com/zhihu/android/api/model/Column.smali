.class public Lcom/zhihu/android/api/model/Column;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Column.java"

# interfaces
.implements Landroid/databinding/h;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Column;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public articlesCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "articles_count"
    .end annotation
.end field

.field public author:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "author"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field public followers:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "followers"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image_url"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_following"
    .end annotation
.end field

.field private transient mCallbacks:Landroid/databinding/l;

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/zhihu/android/api/model/Column$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Column$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Column;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Column;->isFollowing:Z

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/zhihu/android/api/model/Column;->isFollowing:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Column;->id:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Column;->title:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Column;->description:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Column;->imageUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhihu/android/api/model/Column;->articlesCount:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhihu/android/api/model/Column;->followers:J

    .line 88
    const-class v0, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhihu/android/api/model/Column;->followers:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Column;->isFollowing:Z

    .line 90
    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/databinding/l;

    invoke-direct {v0}, Landroid/databinding/l;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Column;->isFollowing:Z

    return v0
.end method

.method public declared-synchronized notifyChange()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyPropertyChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zhihu/android/api/model/Column;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFollowing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/Column;->isFollowing:Z

    .line 122
    sget v0, Lcom/zhihu/android/api/a;->a:I

    invoke-virtual {p0, v0}, Lcom/zhihu/android/api/model/Column;->notifyPropertyChanged(I)V

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/zhihu/android/api/model/Column;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/zhihu/android/api/model/Column;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/zhihu/android/api/model/Column;->description:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/zhihu/android/api/model/Column;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-wide v2, p0, Lcom/zhihu/android/api/model/Column;->articlesCount:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v2, p0, Lcom/zhihu/android/api/model/Column;->followers:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-object v1, p0, Lcom/zhihu/android/api/model/Column;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    iget-boolean v1, p0, Lcom/zhihu/android/api/model/Column;->isFollowing:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    return-void
.end method
