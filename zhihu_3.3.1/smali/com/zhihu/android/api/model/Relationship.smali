.class public Lcom/zhihu/android/api/model/Relationship;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Relationship.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Relationship;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isAnonymous:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_anonymous"
    .end annotation
.end field

.field public isAuthor:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_author"
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

.field public isNotHelp:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_nothelp"
    .end annotation
.end field

.field public isThanked:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_thanked"
    .end annotation
.end field

.field public myAnswer:Lcom/zhihu/android/api/model/MyAnswer;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "my_answer"
    .end annotation
.end field

.field public voting:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voting"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/zhihu/android/api/model/Relationship$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Relationship$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Relationship;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 81
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/api/model/Relationship;->voting:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isAuthor:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isThanked:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isFavorited:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isNotHelp:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isFollowing:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    .line 108
    const-class v0, Lcom/zhihu/android/api/model/MyAnswer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/MyAnswer;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Relationship;->myAnswer:Lcom/zhihu/android/api/model/MyAnswer;

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    goto :goto_1

    :cond_2
    move v0, v2

    .line 104
    goto :goto_2

    :cond_3
    move v0, v2

    .line 105
    goto :goto_3

    :cond_4
    move v0, v2

    .line 106
    goto :goto_4

    :cond_5
    move v1, v2

    .line 107
    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    iget v0, p0, Lcom/zhihu/android/api/model/Relationship;->voting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isAuthor:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isThanked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isFavorited:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isNotHelp:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isFollowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    iget-object v0, p0, Lcom/zhihu/android/api/model/Relationship;->myAnswer:Lcom/zhihu/android/api/model/MyAnswer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v0, v2

    .line 92
    goto :goto_1

    :cond_2
    move v0, v2

    .line 93
    goto :goto_2

    :cond_3
    move v0, v2

    .line 94
    goto :goto_3

    :cond_4
    move v0, v2

    .line 95
    goto :goto_4

    :cond_5
    move v1, v2

    .line 96
    goto :goto_5
.end method
