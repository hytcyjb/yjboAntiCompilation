.class public Lcom/didi/im/adapter/ConversationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationAdapter.java"

# interfaces
.implements Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;,
        Lcom/didi/im/adapter/ConversationAdapter$ResendListener;,
        Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static SHOW_TIMESTAMP__INTERVAL:I


# instance fields
.field private final LEFT:I

.field private final RIGHT:I

.field private audioPlayingPosition:I

.field private chatRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;"
        }
    .end annotation
.end field

.field private driverHeadImage:Landroid/graphics/Bitmap;

.field private driverUid:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private loadingDriverHead:Z

.field private loadingPasssengerHead:Z

.field private mContext:Landroid/content/Context;

.field private passengerHeadImage:Landroid/graphics/Bitmap;

.field private resendListener:Lcom/didi/im/adapter/ConversationAdapter$ResendListener;

.field private session:Lcom/didi/im/model/IMSession;

.field private showTimePosition:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x927c0

    sput v0, Lcom/didi/im/adapter/ConversationAdapter;->SHOW_TIMESTAMP__INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/didi/im/model/IMSession;Lcom/didi/im/adapter/ConversationAdapter$ResendListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "session"
    .parameter "resendListener"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    .line 59
    iput v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->LEFT:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->RIGHT:I

    .line 79
    iput-boolean v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingDriverHead:Z

    .line 81
    iput-boolean v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingPasssengerHead:Z

    .line 84
    iput-object p3, p0, Lcom/didi/im/adapter/ConversationAdapter;->resendListener:Lcom/didi/im/adapter/ConversationAdapter$ResendListener;

    .line 85
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/didi/im/adapter/ConversationAdapter;->session:Lcom/didi/im/model/IMSession;

    .line 87
    iput-object p4, p0, Lcom/didi/im/adapter/ConversationAdapter;->handler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p2}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->queryDriverUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverUid:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/didi/im/model/IMSession;Ljava/util/ArrayList;Lcom/didi/im/adapter/ConversationAdapter$ResendListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "session"
    .parameter
    .parameter "resendListener"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/didi/im/model/IMSession;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;",
            "Lcom/didi/im/adapter/ConversationAdapter$ResendListener;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    .line 59
    iput v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->LEFT:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->RIGHT:I

    .line 79
    iput-boolean v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingDriverHead:Z

    .line 81
    iput-boolean v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingPasssengerHead:Z

    .line 94
    iput-object p4, p0, Lcom/didi/im/adapter/ConversationAdapter;->resendListener:Lcom/didi/im/adapter/ConversationAdapter$ResendListener;

    .line 95
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    .line 96
    iput-object p3, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    .line 97
    iput-object p2, p0, Lcom/didi/im/adapter/ConversationAdapter;->session:Lcom/didi/im/model/IMSession;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/adapter/ConversationAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/im/adapter/ConversationAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/didi/im/adapter/ConversationAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingPasssengerHead:Z

    return p1
.end method

.method static synthetic access$102(Lcom/didi/im/adapter/ConversationAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/didi/im/adapter/ConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/im/adapter/ConversationAdapter;ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/im/adapter/ConversationAdapter;->downloadAudiFileAndPlay(ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/didi/im/adapter/ConversationAdapter;->playAudio(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/im/adapter/ConversationAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/im/adapter/ConversationAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/didi/im/adapter/ConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$802(Lcom/didi/im/adapter/ConversationAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingDriverHead:Z

    return p1
.end method

.method static synthetic access$902(Lcom/didi/im/adapter/ConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private computeTimstampPosition()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->getCount()I

    move-result v0

    .line 145
    .local v0, count:I
    if-lez v0, :cond_2

    .line 146
    new-array v7, v0, [Z

    iput-object v7, p0, Lcom/didi/im/adapter/ConversationAdapter;->showTimePosition:[Z

    .line 147
    iget-object v7, p0, Lcom/didi/im/adapter/ConversationAdapter;->showTimePosition:[Z

    aput-boolean v12, v7, v11

    .line 148
    iget-object v7, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v7

    iget-wide v3, v7, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 149
    .local v3, preTime:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 150
    if-nez v2, :cond_0

    .line 149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v7, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    .line 153
    .local v1, cr:Lcom/didi/im/model/IMChatRecord;
    iget-wide v5, v1, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 154
    .local v5, thisTime:J
    sub-long v7, v5, v3

    sget v9, Lcom/didi/im/adapter/ConversationAdapter;->SHOW_TIMESTAMP__INTERVAL:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 155
    iget-object v7, p0, Lcom/didi/im/adapter/ConversationAdapter;->showTimePosition:[Z

    aput-boolean v12, v7, v2

    .line 156
    move-wide v3, v5

    goto :goto_1

    .line 158
    :cond_1
    iget-object v7, p0, Lcom/didi/im/adapter/ConversationAdapter;->showTimePosition:[Z

    aput-boolean v11, v7, v2

    goto :goto_1

    .line 162
    .end local v1           #cr:Lcom/didi/im/model/IMChatRecord;
    .end local v2           #i:I
    .end local v3           #preTime:J
    .end local v5           #thisTime:J
    :cond_2
    return-void
.end method

.method private createViewByType(I)Landroid/view/View;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    .line 238
    if-nez p1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b6

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 241
    .end local v0           #convertView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b7

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0
.end method

.method private downloadAudiFileAndPlay(ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 4
    .parameter "position"
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v0}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p3, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v3, Lcom/didi/im/adapter/ConversationAdapter$4;

    invoke-direct {v3, p0, p2, p3}, Lcom/didi/im/adapter/ConversationAdapter$4;-><init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/im/helper/IMPushHelper;->recvAudioFile(JLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 364
    return-void
.end method

.method private playAudio(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    .line 321
    iget-object v0, p2, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v1, Lcom/didi/im/adapter/ConversationAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/didi/im/adapter/ConversationAdapter$3;-><init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    invoke-static {v0, v1}, Lcom/didi/im/helper/IMAudioHelper;->play(Ljava/lang/String;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)Z

    .line 341
    return-void
.end method

.method private setHeadLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMUser;)V
    .locals 6
    .parameter "viewHolder"
    .parameter "user"

    .prologue
    const/4 v5, 0x1

    .line 441
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v2}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImUserByID(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 442
    .local v1, u:Lcom/didi/im/model/IMUser;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverUid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/im/helper/IMChatHelper;->isCurrentSeesionDriver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 444
    :cond_0
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201f0

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    iget-boolean v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingDriverHead:Z

    if-nez v2, :cond_1

    .line 451
    iput-boolean v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingDriverHead:Z

    .line 452
    invoke-virtual {p2}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/im/adapter/ConversationAdapter$6;

    invoke-direct {v3, p0, p1}, Lcom/didi/im/adapter/ConversationAdapter$6;-><init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0

    .line 468
    :cond_3
    invoke-virtual {p2}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/im/helper/IMChatHelper;->getPassengerHeadImage(Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, resourceId:I
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 472
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    iget-boolean v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingPasssengerHead:Z

    if-nez v2, :cond_1

    .line 477
    iput-boolean v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->loadingPasssengerHead:Z

    .line 479
    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/im/adapter/ConversationAdapter$7;

    invoke-direct {v3, p0, p1}, Lcom/didi/im/adapter/ConversationAdapter$7;-><init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0
.end method

.method private setListeners(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;I)V
    .locals 2
    .parameter "viewHolder"
    .parameter "position"

    .prologue
    .line 271
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->msgLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/didi/im/adapter/ConversationAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/didi/im/adapter/ConversationAdapter$1;-><init>(Lcom/didi/im/adapter/ConversationAdapter;ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    new-instance v1, Lcom/didi/im/adapter/ConversationAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/didi/im/adapter/ConversationAdapter$2;-><init>(Lcom/didi/im/adapter/ConversationAdapter;I)V

    invoke-virtual {v0, v1}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method

.method private setMessageLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/model/IMUser;I)V
    .locals 5
    .parameter "viewHolder"
    .parameter "chatRecord"
    .parameter "user"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 374
    invoke-direct {p0, p1, p3}, Lcom/didi/im/adapter/ConversationAdapter;->setHeadLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMUser;)V

    .line 375
    invoke-virtual {p2}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 377
    :pswitch_0
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setVisibility(I)V

    .line 378
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 381
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v2, v3}, Lx/ImageView;->setVisibility(I)V

    .line 382
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    iget-object v3, p2, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    const v3, 0x7f09021c

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lx/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 388
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v2, v3}, Lx/ImageView;->setVisibility(I)V

    .line 389
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setVisibility(I)V

    .line 392
    iget v2, p2, Lcom/didi/im/model/IMChatRecord;->voiceTime:I

    invoke-static {v2}, Lcom/didi/im/helper/IMChatHelper;->getVoiceTime(I)I

    move-result v1

    .line 393
    .local v1, voiceTime:I
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/didi/im/adapter/ConversationAdapter;->setVoicePlayStatus(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    .line 396
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Lcom/didi/im/helper/IMChatHelper;->getVoiceLayoutLength(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 397
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 400
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #voiceTime:I
    :pswitch_2
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 401
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v2, v4}, Lx/ImageView;->setVisibility(I)V

    .line 402
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 403
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v2, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 405
    iget-object v2, p2, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v3, Lcom/didi/im/adapter/ConversationAdapter$5;

    invoke-direct {v3, p0, p1}, Lcom/didi/im/adapter/ConversationAdapter$5;-><init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto/16 :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setMessageState(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 3
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 252
    invoke-virtual {p2}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setTimeLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;I)V
    .locals 3
    .parameter "viewHolder"
    .parameter "chatRecord"
    .parameter "position"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->showTimePosition:[Z

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    iget-wide v1, p2, Lcom/didi/im/model/IMChatRecord;->createTime:J

    invoke-static {v1, v2}, Lcom/didi/im/helper/IMChatHelper;->getIMTimeStampContent(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVoiceMessageUnReadState(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;ILcom/didi/im/model/IMUser;)V
    .locals 3
    .parameter "viewHolder"
    .parameter "chatRecord"
    .parameter "viewType"
    .parameter "user"

    .prologue
    const/16 v2, 0x8

    .line 210
    iget v0, p2, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    if-nez v0, :cond_2

    .line 211
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    .line 212
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVoicePlayStatus(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 1
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    .line 426
    iget v0, p2, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 430
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/didi/im/adapter/ConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopVoicePlayAnimation(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    .locals 2
    .parameter "viewHolder"

    .prologue
    .line 344
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 345
    iget-object v0, p1, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 346
    return-void
.end method


# virtual methods
.method public addItem(Lcom/didi/im/model/IMDTOChatRecordAndUser;)V
    .locals 1
    .parameter "chatRecord"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 525
    :cond_0
    return-void
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, chatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v1, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;

    invoke-direct {v1, p0}, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/im/adapter/ConversationAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 563
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 565
    :cond_0
    return-void
.end method

.method public addUnReadItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, chatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 570
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 571
    return-void
.end method

.method public changeChatRecordSendState(Lcom/didi/im/model/IMChatRecord;)V
    .locals 7
    .parameter "record"

    .prologue
    .line 574
    iget-object v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v6, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;

    invoke-direct {v6, p0}, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/im/adapter/ConversationAdapter;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 578
    iget-object v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 579
    .local v1, count:I
    const/4 v4, 0x0

    .line 580
    .local v4, notify:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 581
    iget-object v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 582
    .local v3, imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v3}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 583
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iget v5, v0, Lcom/didi/im/model/IMChatRecord;->ID:I

    iget v6, p1, Lcom/didi/im/model/IMChatRecord;->ID:I

    if-ne v5, v6, :cond_3

    .line 584
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 585
    iget v5, p1, Lcom/didi/im/model/IMChatRecord;->MID:I

    iput v5, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 586
    const/4 v4, 0x1

    .line 590
    .end local v0           #chatRecord:Lcom/didi/im/model/IMChatRecord;
    .end local v3           #imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_2
    if-eqz v4, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 580
    .restart local v0       #chatRecord:Lcom/didi/im/model/IMChatRecord;
    .restart local v3       #imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public changeChatRecordVoicePlayState(II)V
    .locals 2
    .parameter "position"
    .parameter "playStatus"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 600
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iput p2, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    .line 601
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 610
    return-void
.end method

.method public deleteItem(Lcom/didi/im/model/IMChatRecord;)V
    .locals 4
    .parameter "chatRecord"

    .prologue
    .line 528
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 530
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 531
    .local v1, imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v2

    iget v2, v2, Lcom/didi/im/model/IMChatRecord;->ID:I

    iget v3, p1, Lcom/didi/im/model/IMChatRecord;->ID:I

    if-ne v2, v3, :cond_0

    .line 532
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 535
    .end local v1           #imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_1
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 538
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public deleteItem(Lcom/didi/im/model/IMDTOChatRecordAndUser;)V
    .locals 1
    .parameter "chatRecord"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 546
    :cond_0
    return-void
.end method

.method public deleteItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 553
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 123
    .local v0, imChatRecord:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v0}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getUser()Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 124
    .local v1, user:Lcom/didi/im/model/IMUser;
    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/im/helper/IMChatHelper;->isCurrentUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getListMinPosition()I
    .locals 3

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, minId:I
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v2, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;

    invoke-direct {v2, p0}, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/im/adapter/ConversationAdapter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    iget v0, v1, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 630
    :cond_0
    return v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/didi/im/adapter/ConversationAdapter;->getItemViewType(I)I

    move-result v4

    .line 168
    .local v4, viewType:I
    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    .line 191
    .local v3, viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;
    :goto_0
    iget-object v5, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 192
    .local v1, imChatRecord:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 193
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getUser()Lcom/didi/im/model/IMUser;

    move-result-object v2

    .line 194
    .local v2, user:Lcom/didi/im/model/IMUser;
    invoke-direct {p0, v3, v0, p1}, Lcom/didi/im/adapter/ConversationAdapter;->setTimeLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;I)V

    .line 195
    invoke-direct {p0, v3, v0}, Lcom/didi/im/adapter/ConversationAdapter;->setMessageState(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    .line 196
    invoke-direct {p0, v3, v0, v2, p1}, Lcom/didi/im/adapter/ConversationAdapter;->setMessageLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/model/IMUser;I)V

    .line 197
    invoke-direct {p0, v3, v0, v4, v2}, Lcom/didi/im/adapter/ConversationAdapter;->setVoiceMessageUnReadState(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;ILcom/didi/im/model/IMUser;)V

    .line 198
    invoke-direct {p0, v3, p1}, Lcom/didi/im/adapter/ConversationAdapter;->setListeners(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;I)V

    .line 199
    return-object p2

    .line 171
    .end local v0           #chatRecord:Lcom/didi/im/model/IMChatRecord;
    .end local v1           #imChatRecord:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .end local v2           #user:Lcom/didi/im/model/IMUser;
    .end local v3           #viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;
    :cond_0
    new-instance v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;-><init>()V

    .line 172
    .restart local v3       #viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;
    invoke-direct {p0, v4}, Lcom/didi/im/adapter/ConversationAdapter;->createViewByType(I)Landroid/view/View;

    move-result-object p2

    .line 173
    const v5, 0x7f0803c8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    .line 174
    const v5, 0x7f0803c9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->tvUnableTip:Lx/TextView;

    .line 175
    const v5, 0x7f0803ca

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    .line 176
    const v5, 0x7f0803cb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->msgLayout:Landroid/widget/RelativeLayout;

    .line 177
    const v5, 0x7f0803cc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    .line 178
    const v5, 0x7f0803ce

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    .line 179
    const v5, 0x7f0803cf

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    .line 180
    const v5, 0x7f0803d0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/ImageView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    .line 181
    const v5, 0x7f0803d1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    .line 182
    const v5, 0x7f0803d2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/ImageView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    .line 183
    const v5, 0x7f0803d3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    .line 184
    iget-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    .line 185
    const v5, 0x7f0803cd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    .line 186
    iget-object v5, v3, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->msgLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 187
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 188
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/didi/im/adapter/ConversationAdapter;->computeTimstampPosition()V

    .line 137
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public onCommonResendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 1
    .parameter "chatRecord"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->resendListener:Lcom/didi/im/adapter/ConversationAdapter$ResendListener;

    invoke-interface {v0, p1}, Lcom/didi/im/adapter/ConversationAdapter$ResendListener;->onResendMessage(Lcom/didi/im/model/IMChatRecord;)V

    .line 661
    return-void
.end method

.method public onCommonSendCommonMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 656
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 616
    iput-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 620
    iput-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    .line 622
    :cond_1
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    .line 516
    new-instance v0, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;

    invoke-direct {v0, p0}, Lcom/didi/im/adapter/ConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/im/adapter/ConversationAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 517
    invoke-virtual {p0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 518
    return-void
.end method
