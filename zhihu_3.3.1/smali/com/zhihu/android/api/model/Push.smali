.class public Lcom/zhihu/android/api/model/Push;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Push.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_MESSAGE:Ljava/lang/String; = "zhihu.intent.action.MESSAGE"

.field public static final ACTION_NOTIFICATION:Ljava/lang/String; = "zhihu.intent.action.NOTIFICATION"

.field public static final ACTION_PROMOTION:Ljava/lang/String; = "zhihu.intent.action.PROMOTION"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Push;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_INVITE:Ljava/lang/String; = "INVITE"

.field public static final OPEN_PUSH:I = 0x2

.field public static final RECEIVE_PUSH:I = 0x1

.field private static final SEGMENT_NOTIFICATIONS:Ljava/lang/String; = "notifications"


# instance fields
.field public action:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "action"
    .end annotation
.end field

.field public avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "avatar_url"
    .end annotation
.end field

.field public defaultActionName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "default_action_name"
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "group_name"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "message"
    .end annotation
.end field

.field public pushId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "notification_id"
    .end annotation
.end field

.field public sendAt:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "send_at"
    .end annotation
.end field

.field public senderId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sender_id"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
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
    .line 154
    new-instance v0, Lcom/zhihu/android/api/model/Push$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Push$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Push;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 140
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->title:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->message:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->avatarUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->senderId:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->groupName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->defaultActionName:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Push;->pushId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private parseNotificationType(Lcom/zhihu/android/api/model/Push;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p1, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getPushTypeForMark()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 82
    const-string v0, "choice"

    :goto_1
    return-object v0

    .line 75
    :sswitch_0
    const-string v2, "zhihu.intent.action.NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "zhihu.intent.action.MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "zhihu.intent.action.PROMOTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :pswitch_0
    const-string v0, "notification"

    goto :goto_1

    .line 79
    :pswitch_1
    const-string v0, "inbox"

    goto :goto_1

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x77b0e049 -> :sswitch_0
        -0x32014ec9 -> :sswitch_2
        0x4309cd9b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isInviteNotification()Z
    .locals 2

    .prologue
    .line 87
    const-string v0, "INVITE"

    iget-object v1, p0, Lcom/zhihu/android/api/model/Push;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseMessageId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 96
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseThreadId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    :try_start_0
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->senderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->defaultActionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/zhihu/android/api/model/Push;->pushId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return-void
.end method
