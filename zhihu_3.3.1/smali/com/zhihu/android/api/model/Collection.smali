.class public Lcom/zhihu/android/api/model/Collection;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Collection.java"

# interfaces
.implements Landroid/databinding/h;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Collection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public answerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_count"
    .end annotation
.end field

.field public author:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "creator"
    .end annotation
.end field

.field public commentCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment_count"
    .end annotation
.end field

.field public createdTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "created_time"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field public followerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "follower_count"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public isFavorited:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_favorited"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_following"
    .end annotation
.end field

.field public isPublic:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_public"
    .end annotation
.end field

.field private transient mCallbacks:Landroid/databinding/l;

.field public questions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "questions"
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

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field

.field public unreadCount:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "unread_count"
    .end annotation
.end field

.field public updatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/zhihu/android/api/model/Collection$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Collection$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 147
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->id:J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Collection;->title:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Collection;->description:Ljava/lang/String;

    .line 153
    const-class v0, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    .line 154
    sget-object v0, Lcom/zhihu/android/api/model/Question;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Collection;->questions:Ljava/util/List;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->answerCount:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->followerCount:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->commentCount:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Collection;->isPublic:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/zhihu/android/api/model/Collection;->isFollowing:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Collection;->updatedTime:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Collection;->createdTime:J

    .line 162
    return-void

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0

    :cond_1
    move v1, v2

    .line 159
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/databinding/l;

    invoke-direct {v0}, Landroid/databinding/l;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized notifyChange()V
    .locals 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyPropertyChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 123
    :cond_0
    return-void
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFollowing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/Collection;->isFollowing:Z

    .line 94
    sget v0, Lcom/zhihu/android/api/a;->a:I

    invoke-virtual {p0, v0}, Lcom/zhihu/android/api/model/Collection;->notifyPropertyChanged(I)V

    .line 95
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/zhihu/android/api/model/Collection;->unreadCount:I

    .line 99
    sget v0, Lcom/zhihu/android/api/a;->c:I

    invoke-virtual {p0, v0}, Lcom/zhihu/android/api/model/Collection;->notifyPropertyChanged(I)V

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Lcom/zhihu/android/api/model/Collection;->questions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->answerCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->followerCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->commentCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Collection;->isPublic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Collection;->isFollowing:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Collection;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Collection;->createdTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 140
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method
