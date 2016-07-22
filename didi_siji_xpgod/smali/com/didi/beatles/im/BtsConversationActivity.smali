.class public Lcom/didi/beatles/im/BtsConversationActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "BtsConversationActivity.java"

# interfaces
.implements Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;
.implements Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;
.implements Lcom/didi/im/adapter/ConversationAdapter$ResendListener;
.implements Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;


# static fields
.field private static final GET_AUDIO_AMPLITUDE:I = 0x1

.field private static final GET_MESSAGE_FINISH:I = 0x2

.field private static final HIDE_SHADOW_BACKGROUD:I = 0x5

.field private static final PAGE_LIMIT:I = 0x14

.field private static final REACH_RECORD_MAX_TIME:I = 0x3

.field private static final RECORD_START:I = 0x0

.field private static final RECORD_STOP:I = 0x1

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SESSION_TITLE:Ljava/lang/String; = "session_title"

.field private static final SHOW_SHADOW_BACKGROUD:I = 0x4

.field private static final VOICE_RECEIVED_DURATION:I = 0x78


# instance fields
.field private btsImCommons:Lcom/didi/im/model/IMCommons;

.field private final closeListener:Landroid/view/View$OnClickListener;

.field private conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

.field private currentUid:Ljava/lang/String;

.field private currentUser:Lcom/didi/im/model/IMUser;

.field private final handler:Landroid/os/Handler;

.field private isDiscontinuous:Z

.field private mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

.field private mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

.field private mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

.field private mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

.field private final netBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final notificationMessageListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

.field private final onTouchListener:Landroid/view/View$OnTouchListener;

.field private final reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

.field private recordState:I

.field private recordTime:J

.field private session:Lcom/didi/im/model/IMSession;

.field private sessionId:Ljava/lang/String;

.field private sessionTitle:Ljava/lang/String;

.field private shadowLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUid:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionTitle:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->btsImCommons:Lcom/didi/im/model/IMCommons;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->isDiscontinuous:Z

    .line 149
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$1;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$2;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->netBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$4;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->closeListener:Landroid/view/View$OnClickListener;

    .line 652
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$11;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->notificationMessageListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    .line 673
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$12;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$12;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    .line 771
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$14;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$14;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/im/BtsConversationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    return v0
.end method

.method static synthetic access$002(Lcom/didi/beatles/im/BtsConversationActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    return p1
.end method

.method static synthetic access$100(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/beatles/im/BtsConversationActivity;Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/didi/beatles/im/BtsConversationActivity;->updateMessage(Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/beatles/im/BtsConversationActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/beatles/im/BtsConversationActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->getUnreadMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/beatles/im/BtsConversationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->isDiscontinuous:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/didi/beatles/im/BtsConversationActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->isDiscontinuous:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/beatles/im/BtsConversationAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/ConversationBottomBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->dismissAudioRecordDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/im/BtsConversationActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->stopRecordAndSendMessage(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/beatles/im/BtsConversationActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/ConversationTitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/beatles/im/BtsConversationActivity;ZZZ[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/beatles/im/BtsConversationActivity;->onGetNewMessage(ZZZ[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$902(Lcom/didi/beatles/im/BtsConversationActivity;Lcom/didi/im/model/IMCommons;)Lcom/didi/im/model/IMCommons;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->btsImCommons:Lcom/didi/im/model/IMCommons;

    return-object p1
.end method

.method private back()V
    .locals 0

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->finish()V

    .line 786
    return-void
.end method

.method private cancelAudioRecord()V
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    .line 376
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->cancelMaxRecordTimeCheck()V

    .line 377
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->dismissAudioRecordDialog()V

    .line 378
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->cancelRecording()V

    .line 380
    :cond_0
    return-void
.end method

.method private cancelMaxRecordTimeCheck()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    return-void
.end method

.method private clearUnreadCnt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMSession;->setUnreadCnt(I)V

    .line 241
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIMUnreadFlag(Z)V

    .line 242
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->updateImSession(Lcom/didi/im/model/IMSession;)I

    .line 244
    :cond_0
    return-void
.end method

.method private createConversationAdapter()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/didi/beatles/im/BtsConversationAdapter$ResendListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    .line 209
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    return-void
.end method

.method private createNewMessageNotification(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "sessionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMChatRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p2, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->isActivityBackGroud(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 756
    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->vibrate(Landroid/content/Context;)V

    .line 757
    const v0, 0x7f0b01e2

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/model/IMChatRecord;

    invoke-static {p1, v0}, Lcom/didi/im/helper/IMChatHelper;->getImNotificationString(Ljava/lang/String;Lcom/didi/im/model/IMChatRecord;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-class v3, Lcom/didi/beatles/im/BtsConversationActivity;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V

    .line 764
    :cond_0
    return-void
.end method

.method private dismissAudioRecordDialog()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    invoke-virtual {v0}, Lcom/didi/im/component/AudioRecordDialog;->dissMissAudioDialog()V

    .line 493
    :cond_0
    return-void
.end method

.method private getCommonSentence()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCommonVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/im/BtsConversationActivity$5;

    invoke-direct {v1, p0}, Lcom/didi/beatles/im/BtsConversationActivity$5;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->getBtsIMCommonList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 349
    return-void
.end method

.method private getDataFromIntent()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionTitle:Ljava/lang/String;

    .line 193
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPsngrId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUid:Ljava/lang/String;

    .line 194
    return-void
.end method

.method private getMessagsFromDb(I)V
    .locals 3
    .parameter "fromId"

    .prologue
    .line 227
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v1, p1, v2}, Lcom/didi/im/db/IMDBDataHelper;->queryListChatRecordAndUserBySID(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    .local v0, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->setData(Ljava/util/ArrayList;)V

    .line 233
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->getDataSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    goto :goto_0
.end method

.method private getPrivousMessage()V
    .locals 9

    .prologue
    .line 413
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->getListMinPosition()I

    move-result v8

    .line 414
    .local v8, firstFilpPosition:I
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const/16 v6, 0x14

    new-instance v7, Lcom/didi/beatles/im/BtsConversationActivity$6;

    invoke-direct {v7, p0}, Lcom/didi/beatles/im/BtsConversationActivity$6;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/im/helper/IMPushHelper;->fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto :goto_0
.end method

.method private getSessionInfo()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    .line 214
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/im/helper/IMChatHelper;->getCurrentUser(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    .line 216
    return-void
.end method

.method private getUnreadMessage(I)V
    .locals 8
    .parameter "fromId"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    new-instance v7, Lcom/didi/beatles/im/BtsConversationActivity$3;

    invoke-direct {v7, p0}, Lcom/didi/beatles/im/BtsConversationActivity$3;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/im/helper/IMPushHelper;->fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 273
    return-void
.end method

.method private initChatData()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    const-string v2, "reload_im_message"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getSessionInfo()V

    .line 199
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setBtsSessionId(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->clearUnreadCnt()V

    .line 201
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->createConversationAdapter()V

    .line 202
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->getMessagsFromDb(I)V

    .line 203
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->getUnreadMessage(I)V

    .line 204
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->setListeners()V

    .line 205
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 283
    const v0, 0x3f7851ec

    invoke-static {p0, v0}, Lcom/didi/im/helper/IMChatHelper;->setWindowHaflTransparent(Landroid/app/Activity;F)V

    .line 284
    const v0, 0x7f0803bf

    invoke-virtual {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;

    .line 285
    const v0, 0x7f0803bd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 286
    const v0, 0x7f0803be

    invoke-virtual {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/ConversationBottomBar;

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    .line 287
    new-instance v0, Lcom/didi/im/component/AudioRecordDialog;

    invoke-direct {v0}, Lcom/didi/im/component/AudioRecordDialog;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    .line 288
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0, p0}, Lcom/didi/im/component/ConversationBottomBar;->setConversationBottomBarListener(Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;)V

    .line 289
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0, p0}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 290
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->setTitleBar()V

    .line 291
    return-void
.end method

.method private varargs onGetNewMessage(ZZZ[Ljava/lang/Object;)V
    .locals 12
    .parameter "success"
    .parameter "isNeedNotification"
    .parameter "getPrivous"
    .parameter "args"

    .prologue
    .line 692
    if-eqz p1, :cond_5

    const/4 v8, 0x0

    aget-object v8, p4, v8

    if-eqz v8, :cond_5

    .line 693
    const/4 v8, 0x0

    aget-object v4, p4, v8

    check-cast v4, Ljava/util/ArrayList;

    .line 694
    .local v4, imChatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v1, deleteRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v0, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 698
    .local v7, record:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v8}, Lcom/didi/beatles/im/BtsConversationAdapter;->getMessages()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/didi/im/helper/IMChatHelper;->isMessageExist(Ljava/util/ArrayList;Lcom/didi/im/model/IMDTOChatRecordAndUser;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 699
    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v3

    .line 700
    .local v3, imChatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v3           #imChatRecord:Lcom/didi/im/model/IMChatRecord;
    :goto_1
    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v8, :cond_0

    .line 705
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v8}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/didi/im/helper/IMPushHelper;->recvAudioFile(JLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 709
    .end local v7           #record:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v8}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v8

    iget v6, v8, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 710
    .local v6, receiveMinMid:I
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v8}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v5

    .line 711
    .local v5, localMaxMid:I
    sub-int v8, v6, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 712
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Lcom/didi/im/db/IMDBDataHelper;->deleteChatRecordForBlock(Ljava/lang/String;II)I

    .line 713
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->isDiscontinuous:Z

    .line 716
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 717
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 718
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->createNewMessageNotification(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 720
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 721
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    new-instance v9, Lcom/didi/beatles/im/BtsConversationActivity$13;

    invoke-direct {v9, p0, v4, p3}, Lcom/didi/beatles/im/BtsConversationActivity$13;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;Ljava/util/ArrayList;Z)V

    invoke-static {v4, v8, v9}, Lcom/didi/im/db/IMDBDataHelper;->insertBulkChatRecord(Ljava/util/ArrayList;Ljava/lang/String;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V

    .line 750
    .end local v0           #chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    .end local v1           #deleteRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #imChatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .end local v5           #localMaxMid:I
    .end local v6           #receiveMinMid:I
    :cond_5
    :goto_2
    return-void

    .line 746
    .restart local v1       #deleteRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .restart local v4       #imChatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    :cond_6
    if-eqz p3, :cond_5

    .line 747
    iget-object v8, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private refreshList(Lcom/didi/im/model/IMChatRecord;)V
    .locals 3
    .parameter "chatRecord"

    .prologue
    .line 643
    new-instance v0, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-direct {v0}, Lcom/didi/im/model/IMDTOChatRecordAndUser;-><init>()V

    .line 644
    .local v0, imChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v0, p1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setChatRecord(Lcom/didi/im/model/IMChatRecord;)V

    .line 645
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setUser(Lcom/didi/im/model/IMUser;)V

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->addItem(Lcom/didi/im/model/IMDTOChatRecordAndUser;)V

    .line 649
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->getDataSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 650
    return-void
.end method

.method private resendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 2
    .parameter "chatRecord"

    .prologue
    const/4 v1, 0x1

    .line 539
    invoke-virtual {p1, v1}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 540
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordSendState(Lcom/didi/im/model/IMChatRecord;)V

    .line 541
    invoke-static {p1}, Lcom/didi/im/db/IMDBDataHelper;->updateChatRecord(Lcom/didi/im/model/IMChatRecord;)I

    .line 542
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_0
    :pswitch_0
    return-void

    .line 544
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    goto :goto_0

    .line 547
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->sendVoiceMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private restoreDraft()V
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v1}, Lcom/didi/im/model/IMSession;->getDraft()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    .line 534
    .local v0, draft:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v1, v0}, Lcom/didi/im/component/ConversationBottomBar;->setInput(Ljava/lang/String;)V

    .line 536
    .end local v0           #draft:Ljava/lang/String;
    :cond_0
    return-void

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v1}, Lcom/didi/im/model/IMSession;->getDraft()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveImInputState()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->saveInPutState()V

    .line 462
    return-void
.end method

.method private sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V
    .locals 6
    .parameter "chatRecord"
    .parameter "resend"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/didi/im/model/IMChatRecord;->createTime:J

    iget-object v4, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v5, Lcom/didi/beatles/im/BtsConversationActivity$7;

    invoke-direct {v5, p0, p1, p2}, Lcom/didi/beatles/im/BtsConversationActivity$7;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;Lcom/didi/im/model/IMChatRecord;Z)V

    invoke-static/range {v0 .. v5}, Lcom/didi/im/helper/IMPushHelper;->sendMessage(JJLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 482
    return-void
.end method

.method private sendTextMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUid:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v3}, Lcom/didi/im/helper/IMChatHelper;->createNewMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 466
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-static {v1, v2}, Lcom/didi/im/helper/IMChatHelper;->removeDraftIfExist(Lcom/didi/im/model/IMSession;Lcom/didi/im/component/ConversationBottomBar;)V

    .line 469
    :cond_0
    invoke-direct {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->refreshList(Lcom/didi/im/model/IMChatRecord;)V

    .line 470
    invoke-direct {p0, v0, v3}, Lcom/didi/beatles/im/BtsConversationActivity;->sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    .line 471
    return-void
.end method

.method private sendVoiceMessage(Lcom/didi/im/model/IMChatRecord;Z)V
    .locals 7
    .parameter "chatRecord"
    .parameter "resend"

    .prologue
    .line 562
    iget-object v0, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/didi/im/model/IMChatRecord;->createTime:J

    iget v5, p1, Lcom/didi/im/model/IMChatRecord;->voiceTime:I

    new-instance v6, Lcom/didi/beatles/im/BtsConversationActivity$10;

    invoke-direct {v6, p0, p1, p2}, Lcom/didi/beatles/im/BtsConversationActivity$10;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;Lcom/didi/im/model/IMChatRecord;Z)V

    invoke-static/range {v0 .. v6}, Lcom/didi/im/helper/IMPushHelper;->sendAudioMessage(JJLjava/lang/String;ILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 573
    return-void
.end method

.method private sendVoiceMessage(Ljava/lang/String;Z)V
    .locals 6
    .parameter "audioPath"
    .parameter "autoSend"

    .prologue
    .line 555
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUid:Ljava/lang/String;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordTime:J

    invoke-static {v4, v5, p2}, Lcom/didi/im/helper/IMChatHelper;->getVoiceTime(JZ)I

    move-result v4

    invoke-static {v1, v2, v3, p1, v4}, Lcom/didi/im/helper/IMChatHelper;->createNewMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 557
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-direct {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->refreshList(Lcom/didi/im/model/IMChatRecord;)V

    .line 558
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->sendVoiceMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    .line 559
    return-void
.end method

.method private setListeners()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->notificationMessageListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    invoke-static {v1}, Lcom/didi/im/helper/IMPushHelper;->registerIMUnreadListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;)V

    .line 221
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    invoke-static {v1}, Lcom/didi/frame/push/PushHelper;->registReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, mFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->netBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 294
    const v0, 0x7f0803bc

    invoke-virtual {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/ConversationTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    .line 295
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/ConversationTitleBar;->setTitle(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    const v1, 0x7f020204

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/im/component/ConversationTitleBar;->setRightDrawable(ILandroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method private showAudioRecordDialog()V
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordTime:J

    .line 486
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    invoke-virtual {v0, p0}, Lcom/didi/im/component/AudioRecordDialog;->showAudioDialog(Landroid/content/Context;)V

    .line 487
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "oid"
    .parameter "sid"
    .parameter "title"

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "session_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    const/4 v1, 0x1

    const-string v2, "11"

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 147
    return-void
.end method

.method private startAnimatedThread()V
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$9;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    .line 528
    .local v0, animatedThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 529
    return-void
.end method

.method private startAudioRecorder()V
    .locals 4

    .prologue
    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    .line 497
    new-instance v0, Lcom/didi/beatles/im/BtsConversationActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/beatles/im/BtsConversationActivity$8;-><init>(Lcom/didi/beatles/im/BtsConversationActivity;)V

    invoke-static {v0}, Lcom/didi/im/helper/IMAudioHelper;->record(Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V

    .line 503
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget v2, Lcom/didi/im/helper/IMChatHelper;->MAX_RECORD_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 504
    return-void
.end method

.method private stopAudioRecorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    .line 508
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopRecording()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stopRecordAndSendMessage(Z)V
    .locals 4
    .parameter "autoSend"

    .prologue
    .line 355
    iget-wide v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordTime:J

    invoke-static {v2, v3}, Lcom/didi/im/helper/IMChatHelper;->isAudioDurationTooShort(J)Z

    move-result v1

    .line 356
    .local v1, isRecordTooShort:Z
    if-eqz v1, :cond_0

    .line 357
    const v2, 0x7f0b0399

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->stopAudioRecorder()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, fid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const v2, 0x7f0b0397

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->sendVoiceMessage(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private varargs updateMessage(Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V
    .locals 9
    .parameter "chatRecord"
    .parameter "resend"
    .parameter "option"
    .parameter "success"
    .parameter "resultCode"
    .parameter "args"

    .prologue
    .line 587
    sget v5, Lcom/didi/im/helper/IMChatHelper;->SESSION_FROZEN:I

    if-eq p5, v5, :cond_0

    sget v5, Lcom/didi/im/helper/IMChatHelper;->SESSION_DELETED:I

    if-ne p5, v5, :cond_2

    .line 588
    :cond_0
    const v5, 0x7f0b039c

    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 589
    iget v5, p1, Lcom/didi/im/model/IMChatRecord;->ID:I

    invoke-static {v5}, Lcom/didi/im/db/IMDBDataHelper;->deleteChatRecordById(I)I

    .line 590
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v5, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->deleteItem(Lcom/didi/im/model/IMChatRecord;)V

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 594
    :cond_2
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    if-nez v5, :cond_3

    .line 595
    const v5, 0x7f0b039d

    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 599
    :cond_3
    const/16 v5, -0x9

    if-ne p5, v5, :cond_4

    invoke-virtual {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 600
    invoke-virtual {p3}, Lcom/didi/frame/push/PushOptionRecord;->doOption()V

    goto :goto_0

    .line 604
    :cond_4
    const/4 v3, 0x0

    .line 605
    .local v3, needFetchMessage:Z
    const/4 v0, 0x0

    .line 607
    .local v0, fId:Ljava/lang/String;
    if-eqz p4, :cond_9

    .line 608
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 609
    const/4 v5, 0x0

    aget-object v5, p6, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 610
    .local v1, mId:J
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    sub-long v5, v1, v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    .line 611
    const/4 v3, 0x1

    .line 613
    :cond_5
    long-to-int v5, v1

    iput v5, p1, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 614
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 615
    const/4 v5, 0x1

    aget-object v0, p6, v5

    .end local v0           #fId:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 620
    .end local v1           #mId:J
    .restart local v0       #fId:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 621
    iget-object v5, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/didi/im/helper/IMFileHelper;->renameAudioFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    iput-object v0, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 625
    :cond_7
    invoke-static {p1}, Lcom/didi/im/db/IMDBDataHelper;->updateChatRecord(Lcom/didi/im/model/IMChatRecord;)I

    .line 626
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v5, p1}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordSendState(Lcom/didi/im/model/IMChatRecord;)V

    .line 627
    if-eqz p2, :cond_8

    .line 628
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v6, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v6}, Lcom/didi/beatles/im/BtsConversationAdapter;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 632
    :cond_8
    if-eqz v3, :cond_1

    .line 633
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    .line 634
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v5, :cond_1

    .line 635
    iget-object v5, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v5}, Lcom/didi/im/model/IMSession;->getMID()I

    move-result v4

    .line 636
    .local v4, receivedMaxId:I
    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v5}, Lcom/didi/beatles/im/BtsConversationActivity;->getUnreadMessage(I)V

    goto/16 :goto_0

    .line 618
    .end local v4           #receivedMaxId:I
    :cond_9
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 793
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 794
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->overridePendingTransition(II)V

    .line 795
    return-void
.end method

.method public onAudioRecordCancel()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->cancelAudioRecord()V

    .line 371
    return-void
.end method

.method public onAudioRecordEnd()V
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    .line 331
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->cancelMaxRecordTimeCheck()V

    .line 332
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->dismissAudioRecordDialog()V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->stopRecordAndSendMessage(Z)V

    .line 335
    :cond_0
    return-void
.end method

.method public onAudioRecordStart()V
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->showAudioRecordDialog()V

    .line 322
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->startAudioRecorder()V

    .line 323
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->startAnimatedThread()V

    .line 325
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->back()V

    .line 782
    return-void
.end method

.method public onCommonMsgClicked()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v1}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 312
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, v2}, Lcom/didi/im/component/CommonMessagePopupHelper;->getDialogHelper(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)Lcom/didi/im/component/CommonMessagePopupHelper;

    move-result-object v0

    .line 314
    .local v0, mPopupHelper:Lcom/didi/im/component/CommonMessagePopupHelper;
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->btsImCommons:Lcom/didi/im/model/IMCommons;

    invoke-static {v1}, Lcom/didi/im/helper/IMChatHelper;->getCommonSentence(Lcom/didi/im/model/IMCommons;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/didi/im/component/CommonMessagePopupHelper;->showPopupWindow(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 316
    return-void
.end method

.method public onCommonResendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "chatRecord"

    .prologue
    .line 769
    return-void
.end method

.method public onCommonSendCommonMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->sendTextMessage(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->overridePendingTransition(II)V

    .line 182
    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->setContentView(I)V

    .line 183
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->initViews()V

    .line 184
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getDataFromIntent()V

    .line 185
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->initChatData()V

    .line 186
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getCommonSentence()V

    .line 187
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->session:Lcom/didi/im/model/IMSession;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-static {v0, v1}, Lcom/didi/im/helper/IMChatHelper;->saveDraftIfExist(Lcom/didi/im/model/IMSession;Lcom/didi/im/component/ConversationBottomBar;)V

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->saveImInputState()V

    .line 452
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->release()V

    .line 453
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->netBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->unregisterIMUnreadListener()V

    .line 455
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    invoke-static {v0}, Lcom/didi/frame/push/PushHelper;->unRegistReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V

    .line 456
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopPlaying()V

    .line 457
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 458
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->cancelAudioRecord()V

    .line 442
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopPlaying()V

    .line 443
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onPause()V

    .line 444
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->getPrivousMessage()V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->getListMinPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/beatles/im/BtsConversationActivity;->getMessagsFromDb(I)V

    goto :goto_0
.end method

.method public onResendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "chatRecord"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->resendMessage(Lcom/didi/im/model/IMChatRecord;)V

    .line 437
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/didi/beatles/im/BtsConversationActivity;->restoreDraft()V

    .line 279
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onResume()V

    .line 280
    return-void
.end method

.method public onSlideBack()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/im/component/AudioRecordDialog;->setTip(Z)V

    .line 395
    return-void
.end method

.method public onSlideUpwards()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/AudioRecordDialog;->setTip(Z)V

    .line 390
    return-void
.end method

.method public onTextMessageSend(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->sendTextMessage(Ljava/lang/String;)V

    .line 385
    return-void
.end method
