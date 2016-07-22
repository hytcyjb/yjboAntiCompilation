.class public Lcom/zhihu/android/api/model/Notification;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Notification.java"

# interfaces
.implements Landroid/databinding/h;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CONTENT:I = 0x1

.field public static final TYPE_FOLLOW:I = 0x2

.field public static final TYPE_LIKE:I = 0x3


# instance fields
.field public actionCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "action_count"
    .end annotation
.end field

.field public actionName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "action_name"
    .end annotation
.end field

.field public answer:Lcom/zhihu/android/api/model/Answer;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer"
    .end annotation
.end field

.field public answerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_count"
    .end annotation
.end field

.field public count:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "count"
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "group_name"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "thread_id"
    .end annotation
.end field

.field public isRead:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_read"
    .end annotation
.end field

.field private transient mCallbacks:Landroid/databinding/l;

.field public operators:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "operators"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ZHObject;",
            ">;"
        }
    .end annotation
.end field

.field public question:Lcom/zhihu/android/api/model/Question;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question"
    .end annotation
.end field

.field public questionCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question_count"
    .end annotation
.end field

.field public target:Lcom/zhihu/android/api/model/ZHObject;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "target"
    .end annotation
.end field

.field public thankCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "thank_count"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field

.field public updatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated_time"
    .end annotation
.end field

.field public voteCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "vote_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/zhihu/android/api/model/Notification$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Notification$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 158
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->id:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->actionName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->actionCount:J

    .line 164
    new-instance v0, Lcom/zhihu/android/api/model/ZHObject;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 165
    const-class v1, Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 166
    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->target:Lcom/zhihu/android/api/model/ZHObject;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->operators:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->operators:Ljava/util/List;

    const-class v1, Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->count:J

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Notification;->isRead:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->thankCount:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->voteCount:J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->type:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->updatedTime:J

    .line 175
    const-class v0, Lcom/zhihu/android/api/model/Answer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->answer:Lcom/zhihu/android/api/model/Answer;

    .line 176
    const-class v0, Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->question:Lcom/zhihu/android/api/model/Question;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->groupName:Ljava/lang/String;

    .line 178
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/databinding/l;

    invoke-direct {v0}, Landroid/databinding/l;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized notifyChange()V
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V
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

.method public notifyPropertyChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->b(Ljava/lang/Object;)V
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

.method public setIsRead(Z)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/Notification;->isRead:Z

    .line 91
    sget v0, Lcom/zhihu/android/api/a;->b:I

    invoke-virtual {p0, v0}, Lcom/zhihu/android/api/model/Notification;->notifyPropertyChanged(I)V

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->actionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->actionCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->target:Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 145
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->operators:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 146
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Notification;->isRead:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 148
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->thankCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->voteCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Notification;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->answer:Lcom/zhihu/android/api/model/Answer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->question:Lcom/zhihu/android/api/model/Question;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Lcom/zhihu/android/api/model/Notification;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
