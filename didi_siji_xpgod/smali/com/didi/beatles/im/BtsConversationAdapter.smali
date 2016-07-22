.class public Lcom/didi/beatles/im/BtsConversationAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtsConversationAdapter.java"

# interfaces
.implements Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;,
        Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;,
        Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;
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

.field private resendListener:Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;

.field private sessionId:Ljava/lang/String;

.field private showTimePosition:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x927c0

    sput v0, Lcom/didi/beatles/im/BtsConversationAdapter;->SHOW_TIMESTAMP__INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "sessionid"
    .parameter "resendListener"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->LEFT:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->RIGHT:I

    .line 80
    iput-boolean v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingDriverHead:Z

    .line 82
    iput-boolean v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingPasssengerHead:Z

    .line 85
    iput-object p3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->resendListener:Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;

    .line 86
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->sessionId:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->handler:Landroid/os/Handler;

    .line 89
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->queryDriverUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverUid:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/im/BtsConversationAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/didi/beatles/im/BtsConversationAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingPasssengerHead:Z

    return p1
.end method

.method static synthetic access$102(Lcom/didi/beatles/im/BtsConversationAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/im/BtsConversationAdapter;ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/beatles/im/BtsConversationAdapter;->downloadAudiFileAndPlay(ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/im/BtsConversationAdapter;->playAudio(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/beatles/im/BtsConversationAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/beatles/im/BtsConversationAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/didi/beatles/im/BtsConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$802(Lcom/didi/beatles/im/BtsConversationAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingDriverHead:Z

    return p1
.end method

.method static synthetic access$902(Lcom/didi/beatles/im/BtsConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private computeTimstampPosition()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->getCount()I

    move-result v0

    .line 147
    .local v0, count:I
    if-lez v0, :cond_2

    .line 148
    new-array v7, v0, [Z

    iput-object v7, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->showTimePosition:[Z

    .line 149
    iget-object v7, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->showTimePosition:[Z

    aput-boolean v12, v7, v11

    .line 150
    iget-object v7, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v7

    iget-wide v3, v7, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 151
    .local v3, preTime:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 152
    if-nez v2, :cond_0

    .line 151
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v7, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    .line 155
    .local v1, cr:Lcom/didi/im/model/IMChatRecord;
    iget-wide v5, v1, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 156
    .local v5, thisTime:J
    sub-long v7, v5, v3

    sget v9, Lcom/didi/beatles/im/BtsConversationAdapter;->SHOW_TIMESTAMP__INTERVAL:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 157
    iget-object v7, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->showTimePosition:[Z

    aput-boolean v12, v7, v2

    .line 158
    move-wide v3, v5

    goto :goto_1

    .line 160
    :cond_1
    iget-object v7, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->showTimePosition:[Z

    aput-boolean v11, v7, v2

    goto :goto_1

    .line 164
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

    .line 257
    if-nez p1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b6

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 260
    .end local v0           #convertView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b7

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0
.end method

.method private downloadAudiFileAndPlay(ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 4
    .parameter "position"
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p3, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v3, Lcom/didi/beatles/im/BtsConversationAdapter$4;

    invoke-direct {v3, p0, p2, p3}, Lcom/didi/beatles/im/BtsConversationAdapter$4;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/im/helper/IMPushHelper;->recvAudioFile(JLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 392
    return-void
.end method

.method private playAudio(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    .line 349
    iget-object v0, p2, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v1, Lcom/didi/beatles/im/BtsConversationAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter$3;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    invoke-static {v0, v1}, Lcom/didi/im/helper/IMAudioHelper;->play(Ljava/lang/String;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)Z

    .line 369
    return-void
.end method

.method private setHeadLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMUser;)V
    .locals 6
    .parameter "viewHolder"
    .parameter "user"

    .prologue
    const/4 v5, 0x1

    .line 469
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->sessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImUserByID(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 470
    .local v1, u:Lcom/didi/im/model/IMUser;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverUid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/im/helper/IMChatHelper;->isCurrentSeesionDriver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    :cond_0
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020071

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 474
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    iget-boolean v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingDriverHead:Z

    if-nez v2, :cond_1

    .line 479
    iput-boolean v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingDriverHead:Z

    .line 480
    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/im/BtsConversationAdapter$6;

    invoke-direct {v3, p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter$6;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0

    .line 496
    :cond_3
    const v0, 0x7f020071

    .line 497
    .local v0, resourceId:I
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 499
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 500
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    iget-boolean v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingPasssengerHead:Z

    if-nez v2, :cond_1

    .line 505
    iput-boolean v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->loadingPasssengerHead:Z

    .line 507
    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/im/BtsConversationAdapter$7;

    invoke-direct {v3, p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter$7;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0
.end method

.method private setListeners(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;I)V
    .locals 2
    .parameter "viewHolder"
    .parameter "position"

    .prologue
    .line 290
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->msgLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/didi/beatles/im/BtsConversationAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/didi/beatles/im/BtsConversationAdapter$1;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    new-instance v1, Lcom/didi/beatles/im/BtsConversationAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/im/BtsConversationAdapter$2;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;I)V

    invoke-virtual {v0, v1}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    return-void
.end method

.method private setMessageLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/model/IMUser;I)V
    .locals 5
    .parameter "viewHolder"
    .parameter "chatRecord"
    .parameter "user"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 402
    invoke-direct {p0, p1, p3}, Lcom/didi/beatles/im/BtsConversationAdapter;->setHeadLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMUser;)V

    .line 403
    invoke-virtual {p2}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 405
    :pswitch_0
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setVisibility(I)V

    .line 406
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 407
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 409
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v2, v3}, Lx/ImageView;->setVisibility(I)V

    .line 410
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    iget-object v3, p2, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    const v3, 0x7f09021c

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lx/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 416
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v2, v3}, Lx/ImageView;->setVisibility(I)V

    .line 417
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 418
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setVisibility(I)V

    .line 420
    iget v2, p2, Lcom/didi/im/model/IMChatRecord;->voiceTime:I

    invoke-static {v2}, Lcom/didi/im/helper/IMChatHelper;->getVoiceTime(I)I

    move-result v1

    .line 421
    .local v1, voiceTime:I
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

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

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/im/BtsConversationAdapter;->setVoicePlayStatus(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    .line 424
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Lcom/didi/im/helper/IMChatHelper;->getVoiceLayoutLength(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 428
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #voiceTime:I
    :pswitch_2
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 429
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v2, v4}, Lx/ImageView;->setVisibility(I)V

    .line 430
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 431
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v2, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 433
    iget-object v2, p2, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v3, Lcom/didi/beatles/im/BtsConversationAdapter$5;

    invoke-direct {v3, p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter$5;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto/16 :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setMessageState(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 3
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 271
    invoke-virtual {p2}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setTimeLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;I)V
    .locals 3
    .parameter "viewHolder"
    .parameter "chatRecord"
    .parameter "position"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->showTimePosition:[Z

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    iget-wide v1, p2, Lcom/didi/im/model/IMChatRecord;->createTime:J

    invoke-static {v1, v2}, Lcom/didi/im/helper/IMChatHelper;->getIMTimeStampContent(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVoiceMessageUnReadState(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;ILcom/didi/im/model/IMUser;)V
    .locals 3
    .parameter "viewHolder"
    .parameter "chatRecord"
    .parameter "viewType"
    .parameter "user"

    .prologue
    const/16 v2, 0x8

    .line 229
    iget v0, p2, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    if-nez v0, :cond_2

    .line 230
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    .line 231
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVoicePlayStatus(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 1
    .parameter "viewHolder"
    .parameter "chatRecord"

    .prologue
    .line 454
    iget v0, p2, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 458
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopVoicePlayAnimation(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    .locals 2
    .parameter "viewHolder"

    .prologue
    .line 372
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 373
    iget-object v0, p1, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 374
    return-void
.end method


# virtual methods
.method public addItem(Lcom/didi/im/model/IMDTOChatRecordAndUser;)V
    .locals 1
    .parameter "chatRecord"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 553
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
    .line 588
    .local p1, chatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 590
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v1, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;

    invoke-direct {v1, p0}, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 591
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 593
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
    .line 596
    .local p1, chatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 597
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 599
    return-void
.end method

.method public changeChatRecordSendState(Lcom/didi/im/model/IMChatRecord;)V
    .locals 7
    .parameter "record"

    .prologue
    .line 602
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v6, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;

    invoke-direct {v6, p0}, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 606
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 607
    .local v1, count:I
    const/4 v4, 0x0

    .line 608
    .local v4, notify:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 609
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 610
    .local v3, imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v3}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 611
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iget v5, v0, Lcom/didi/im/model/IMChatRecord;->ID:I

    iget v6, p1, Lcom/didi/im/model/IMChatRecord;->ID:I

    if-ne v5, v6, :cond_3

    .line 612
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 613
    iget v5, p1, Lcom/didi/im/model/IMChatRecord;->MID:I

    iput v5, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 614
    const/4 v4, 0x1

    .line 618
    .end local v0           #chatRecord:Lcom/didi/im/model/IMChatRecord;
    .end local v3           #imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_2
    if-eqz v4, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 608
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
    .line 624
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 628
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iput p2, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    .line 629
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 638
    return-void
.end method

.method public deleteItem(Lcom/didi/im/model/IMChatRecord;)V
    .locals 4
    .parameter "chatRecord"

    .prologue
    .line 556
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 557
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 558
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 559
    .local v1, imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v2

    iget v2, v2, Lcom/didi/im/model/IMChatRecord;->ID:I

    iget v3, p1, Lcom/didi/im/model/IMChatRecord;->ID:I

    if-ne v2, v3, :cond_0

    .line 560
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 563
    .end local v1           #imdtoChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_1
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 566
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public deleteItem(Lcom/didi/im/model/IMDTOChatRecordAndUser;)V
    .locals 1
    .parameter "chatRecord"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 574
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
    .line 577
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 581
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 122
    .local v0, imChatRecord:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getUser()Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 126
    .local v1, user:Lcom/didi/im/model/IMUser;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/im/helper/IMChatHelper;->isCurrentUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getListMinPosition()I
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, minId:I
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v2, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;

    invoke-direct {v2, p0}, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 656
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    iget v0, v1, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 658
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
    .line 584
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->getItemViewType(I)I

    move-result v4

    .line 170
    .local v4, viewType:I
    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    .line 192
    .local v3, viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;
    :goto_0
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 218
    :cond_0
    :goto_1
    return-object p2

    .line 173
    .end local v3           #viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;
    :cond_1
    new-instance v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;-><init>()V

    .line 174
    .restart local v3       #viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;
    invoke-direct {p0, v4}, Lcom/didi/beatles/im/BtsConversationAdapter;->createViewByType(I)Landroid/view/View;

    move-result-object p2

    .line 175
    const v5, 0x7f0803c8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->tvTimeStamp:Lx/TextView;

    .line 176
    const v5, 0x7f0803c9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->tvUnableTip:Lx/TextView;

    .line 177
    const v5, 0x7f0803ca

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    .line 178
    const v5, 0x7f0803cb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->msgLayout:Landroid/widget/RelativeLayout;

    .line 179
    const v5, 0x7f0803cc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->textMsg:Lx/TextView;

    .line 180
    const v5, 0x7f0803ce

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    .line 181
    const v5, 0x7f0803cf

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceTv:Lx/TextView;

    .line 182
    const v5, 0x7f0803d0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/ImageView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    .line 183
    const v5, 0x7f0803d1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->sendingPb:Landroid/widget/ProgressBar;

    .line 184
    const v5, 0x7f0803d2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/ImageView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->resend:Lx/ImageView;

    .line 185
    const v5, 0x7f0803d3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->unread:Landroid/widget/ImageView;

    .line 186
    iget-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlay:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

    .line 187
    const v5, 0x7f0803cd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->voiceLayout:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v5, v3, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->msgLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 189
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 190
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 197
    .local v1, imChatRecord:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 203
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getUser()Lcom/didi/im/model/IMUser;

    move-result-object v2

    .line 209
    .local v2, user:Lcom/didi/im/model/IMUser;
    if-eqz v2, :cond_0

    .line 213
    invoke-direct {p0, v3, v0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->setTimeLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;I)V

    .line 214
    invoke-direct {p0, v3, v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->setMessageState(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    .line 215
    invoke-direct {p0, v3, v0, v2, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->setMessageLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/model/IMUser;I)V

    .line 216
    invoke-direct {p0, v3, v0, v4, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->setVoiceMessageUnReadState(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;ILcom/didi/im/model/IMUser;)V

    .line 217
    invoke-direct {p0, v3, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->setListeners(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public getlistMaxPositionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 662
    const-string v0, ""

    .line 663
    .local v0, maxId:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    new-instance v2, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;

    invoke-direct {v2, p0}, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 665
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    iget-object v0, v1, Lcom/didi/im/model/IMChatRecord;->UID:Ljava/lang/String;

    .line 667
    :cond_0
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->computeTimstampPosition()V

    .line 139
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public onCommonResendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 1
    .parameter "chatRecord"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->resendListener:Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;

    invoke-interface {v0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;->onResendMessage(Lcom/didi/im/model/IMChatRecord;)V

    .line 697
    return-void
.end method

.method public onCommonSendCommonMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 692
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 642
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 644
    iput-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 648
    iput-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;

    .line 650
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
    .line 542
    .local p1, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;

    .line 544
    new-instance v0, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;-><init>(Lcom/didi/beatles/im/BtsConversationAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 545
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 546
    return-void
.end method
