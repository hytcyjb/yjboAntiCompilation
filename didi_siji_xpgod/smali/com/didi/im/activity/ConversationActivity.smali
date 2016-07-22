.class public Lcom/didi/im/activity/ConversationActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;
.implements Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;
.implements Lcom/didi/im/adapter/ConversationAdapter$ResendListener;
.implements Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;


# static fields
.field private static final GET_AUDIO_AMPLITUDE:I = 0x1

.field private static final GET_MESSAGE_FINISH:I = 0x2

.field public static final HIDE_SHADOW_BACKGROUD:I = 0x5

.field private static final PAGE_LIMIT:I = 0x14

.field private static final REACH_RECORD_MAX_TIME:I = 0x3

.field private static final RECORD_START:I = 0x0

.field private static final RECORD_STOP:I = 0x1

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SHOW_SHADOW_BACKGROUD:I = 0x4

.field private static final VOICE_RECEIVED_DURATION:I = 0x78


# instance fields
.field private animatedThread:Ljava/lang/Thread;

.field private closeListener:Landroid/view/View$OnClickListener;

.field private conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

.field currentUid:Ljava/lang/String;

.field private currentUser:Lcom/didi/im/model/IMUser;

.field private firstFilpPosition:I

.field private handler:Landroid/os/Handler;

.field isDiscontinuous:Z

.field private mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

.field private mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

.field private mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

.field private mDiaListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mPopupHelper:Lcom/didi/im/component/CommonMessagePopupHelper;

.field private mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

.field private netBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private notificationMessageListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

.field private recordState:I

.field private recordTime:J

.field private session:Lcom/didi/im/model/IMSession;

.field sessionId:Ljava/lang/String;

.field private shadowLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->currentUid:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/didi/im/activity/ConversationActivity;->firstFilpPosition:I

    .line 119
    iput-boolean v1, p0, Lcom/didi/im/activity/ConversationActivity;->isDiscontinuous:Z

    .line 125
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$1;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$2;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->netBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$4;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->closeListener:Landroid/view/View$OnClickListener;

    .line 605
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$10;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->notificationMessageListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    .line 626
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$11;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    .line 730
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$13;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$13;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 776
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$14;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$14;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDiaListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/activity/ConversationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    return v0
.end method

.method static synthetic access$002(Lcom/didi/im/activity/ConversationActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    return p1
.end method

.method static synthetic access$100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/im/activity/ConversationActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/didi/im/activity/ConversationActivity;->getUnreadMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/adapter/ConversationAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/ConversationBottomBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->removeDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->dismissAudioRecordDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/im/activity/ConversationActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/didi/im/activity/ConversationActivity;->stopRecordAndSendMessage(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/im/activity/ConversationActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/ConversationTitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/im/activity/ConversationActivity;ZZZZ[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/didi/im/activity/ConversationActivity;->onGetNewMessage(ZZZZ[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/im/activity/ConversationActivity;Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/didi/im/activity/ConversationActivity;->updateMessage(Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/im/activity/ConversationActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private back()V
    .locals 0

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/didi/im/activity/ConversationActivity;->finish()V

    .line 745
    return-void
.end method

.method private cancelAudioRecord()V
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    .line 330
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->cancelMaxRecordTimeCheck()V

    .line 331
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->dismissAudioRecordDialog()V

    .line 332
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->cancelRecording()V

    .line 334
    :cond_0
    return-void
.end method

.method private cancelMaxRecordTimeCheck()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    return-void
.end method

.method private clearUnreadCnt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMSession;->setUnreadCnt(I)V

    .line 213
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIMUnreadFlag(Z)V

    .line 214
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->updateImSession(Lcom/didi/im/model/IMSession;)I

    .line 216
    :cond_0
    return-void
.end method

.method private createConversationAdapter()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/didi/im/adapter/ConversationAdapter;-><init>(Landroid/content/Context;Lcom/didi/im/model/IMSession;Lcom/didi/im/adapter/ConversationAdapter$ResendListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    .line 182
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
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
    .line 713
    .local p2, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->isActivityBackGroud(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 715
    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->vibrate(Landroid/content/Context;)V

    .line 716
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

    const-class v3, Lcom/didi/im/activity/ConversationActivity;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V

    .line 723
    :cond_0
    return-void
.end method

.method private dismissAudioRecordDialog()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    invoke-virtual {v0}, Lcom/didi/im/component/AudioRecordDialog;->dissMissAudioDialog()V

    .line 441
    :cond_0
    return-void
.end method

.method private getDataFromIntent()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/didi/im/activity/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/didi/im/activity/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    .line 168
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPsngrId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->currentUid:Ljava/lang/String;

    .line 169
    return-void
.end method

.method private getMessagsFromDb(I)V
    .locals 3
    .parameter "fromId"

    .prologue
    .line 200
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v1, p1, v2}, Lcom/didi/im/db/IMDBDataHelper;->queryListChatRecordAndUserBySID(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    .local v0, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v1, v0}, Lcom/didi/im/adapter/ConversationAdapter;->setData(Ljava/util/ArrayList;)V

    .line 206
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v2}, Lcom/didi/im/adapter/ConversationAdapter;->getDataSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    goto :goto_0
.end method

.method private getPrivousMessage()V
    .locals 8

    .prologue
    .line 364
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/im/adapter/ConversationAdapter;->getListMinPosition()I

    move-result v0

    iput v0, p0, Lcom/didi/im/activity/ConversationActivity;->firstFilpPosition:I

    .line 365
    iget v0, p0, Lcom/didi/im/activity/ConversationActivity;->firstFilpPosition:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/didi/im/activity/ConversationActivity;->firstFilpPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/didi/im/activity/ConversationActivity;->firstFilpPosition:I

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const/16 v6, 0x14

    new-instance v7, Lcom/didi/im/activity/ConversationActivity$5;

    invoke-direct {v7, p0}, Lcom/didi/im/activity/ConversationActivity$5;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/im/helper/IMPushHelper;->fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto :goto_0
.end method

.method private getSessionInfo()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    .line 187
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->currentUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/im/helper/IMChatHelper;->getCurrentUser(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    .line 188
    return-void
.end method

.method private getUnreadMessage(I)V
    .locals 8
    .parameter "fromId"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    new-instance v7, Lcom/didi/im/activity/ConversationActivity$3;

    invoke-direct {v7, p0}, Lcom/didi/im/activity/ConversationActivity$3;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/im/helper/IMPushHelper;->fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 245
    return-void
.end method

.method private initChatData()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->getSessionInfo()V

    .line 173
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->clearUnreadCnt()V

    .line 174
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->createConversationAdapter()V

    .line 175
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->getMessagsFromDb(I)V

    .line 176
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->getUnreadMessage(I)V

    .line 177
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->setListeners()V

    .line 178
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 254
    const v0, 0x3f7851ec

    invoke-static {p0, v0}, Lcom/didi/im/helper/IMChatHelper;->setWindowHaflTransparent(Landroid/app/Activity;F)V

    .line 255
    const v0, 0x7f0803bf

    invoke-virtual {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;

    .line 256
    const v0, 0x7f0803bd

    invoke-virtual {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 257
    const v0, 0x7f0803be

    invoke-virtual {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/ConversationBottomBar;

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    .line 258
    new-instance v0, Lcom/didi/im/component/AudioRecordDialog;

    invoke-direct {v0}, Lcom/didi/im/component/AudioRecordDialog;-><init>()V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    .line 259
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0, p0}, Lcom/didi/im/component/ConversationBottomBar;->setConversationBottomBarListener(Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;)V

    .line 260
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0, p0}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 261
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->setTitleBar()V

    .line 262
    return-void
.end method

.method private varargs onGetNewMessage(ZZZZ[Ljava/lang/Object;)V
    .locals 11
    .parameter "success"
    .parameter "isNeedNotification"
    .parameter "getPrivous"
    .parameter "receiveNew"
    .parameter "args"

    .prologue
    .line 651
    if-eqz p1, :cond_5

    const/4 v7, 0x0

    aget-object v7, p5, v7

    if-eqz v7, :cond_5

    .line 652
    const/4 v7, 0x0

    aget-object v3, p5, v7

    check-cast v3, Ljava/util/ArrayList;

    .line 653
    .local v3, imChatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v1, deleteRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 658
    .local v6, record:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v7}, Lcom/didi/im/adapter/ConversationAdapter;->getMessages()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/didi/im/helper/IMChatHelper;->isMessageExist(Ljava/util/ArrayList;Lcom/didi/im/model/IMDTOChatRecordAndUser;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 659
    invoke-virtual {v6}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :goto_1
    invoke-virtual {v6}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 664
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v7}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v9

    iget-object v9, v9, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/didi/im/helper/IMPushHelper;->recvAudioFile(JLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    .end local v6           #record:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v7}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v7

    iget v5, v7, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 669
    .local v5, receiveMinMid:I
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v4

    .line 670
    .local v4, localMaxMid:I
    sub-int v7, v5, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 671
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Lcom/didi/im/db/IMDBDataHelper;->deleteChatRecordForBlock(Ljava/lang/String;II)I

    .line 672
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/didi/im/activity/ConversationActivity;->isDiscontinuous:Z

    .line 675
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 676
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 677
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/didi/im/activity/ConversationActivity;->createNewMessageNotification(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 679
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 680
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    new-instance v8, Lcom/didi/im/activity/ConversationActivity$12;

    invoke-direct {v8, p0, v3, p3}, Lcom/didi/im/activity/ConversationActivity$12;-><init>(Lcom/didi/im/activity/ConversationActivity;Ljava/util/ArrayList;Z)V

    invoke-static {v3, v7, v8}, Lcom/didi/im/db/IMDBDataHelper;->insertBulkChatRecord(Ljava/util/ArrayList;Ljava/lang/String;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V

    .line 709
    .end local v0           #chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    .end local v1           #deleteRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #imChatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .end local v4           #localMaxMid:I
    .end local v5           #receiveMinMid:I
    :cond_5
    :goto_2
    return-void

    .line 705
    .restart local v1       #deleteRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .restart local v3       #imChatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    :cond_6
    if-eqz p3, :cond_5

    .line 706
    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private refreshList(Lcom/didi/im/model/IMChatRecord;)V
    .locals 3
    .parameter "chatRecord"

    .prologue
    .line 596
    new-instance v0, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-direct {v0}, Lcom/didi/im/model/IMDTOChatRecordAndUser;-><init>()V

    .line 597
    .local v0, imChatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v0, p1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setChatRecord(Lcom/didi/im/model/IMChatRecord;)V

    .line 598
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setUser(Lcom/didi/im/model/IMUser;)V

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v1, v0}, Lcom/didi/im/adapter/ConversationAdapter;->addItem(Lcom/didi/im/model/IMDTOChatRecordAndUser;)V

    .line 602
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v2}, Lcom/didi/im/adapter/ConversationAdapter;->getDataSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 603
    return-void
.end method

.method private removeDialog()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 789
    :cond_0
    return-void
.end method

.method private resendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 2
    .parameter "chatRecord"

    .prologue
    const/4 v1, 0x1

    .line 485
    invoke-virtual {p1, v1}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 486
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordSendState(Lcom/didi/im/model/IMChatRecord;)V

    .line 487
    invoke-static {p1}, Lcom/didi/im/db/IMDBDataHelper;->updateChatRecord(Lcom/didi/im/model/IMChatRecord;)I

    .line 488
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 498
    :goto_0
    :pswitch_0
    return-void

    .line 490
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/didi/im/activity/ConversationActivity;->sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/didi/im/activity/ConversationActivity;->sendVoiceMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    goto :goto_0

    .line 488
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
    .line 478
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v1}, Lcom/didi/im/model/IMSession;->getDraft()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    .line 480
    .local v0, draft:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v1, v0}, Lcom/didi/im/component/ConversationBottomBar;->setInput(Ljava/lang/String;)V

    .line 482
    .end local v0           #draft:Ljava/lang/String;
    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v1}, Lcom/didi/im/model/IMSession;->getDraft()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveImInputState()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->saveInPutState()V

    .line 412
    return-void
.end method

.method private sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V
    .locals 6
    .parameter "chatRecord"
    .parameter "resend"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/didi/im/model/IMChatRecord;->createTime:J

    iget-object v4, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    new-instance v5, Lcom/didi/im/activity/ConversationActivity$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/didi/im/activity/ConversationActivity$6;-><init>(Lcom/didi/im/activity/ConversationActivity;Lcom/didi/im/model/IMChatRecord;Z)V

    invoke-static/range {v0 .. v5}, Lcom/didi/im/helper/IMPushHelper;->sendMessage(JJLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 430
    return-void
.end method

.method private sendTextMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 415
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->currentUid:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v3}, Lcom/didi/im/helper/IMChatHelper;->createNewMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 416
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-static {v1, v2}, Lcom/didi/im/helper/IMChatHelper;->removeDraftIfExist(Lcom/didi/im/model/IMSession;Lcom/didi/im/component/ConversationBottomBar;)V

    .line 417
    invoke-direct {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->refreshList(Lcom/didi/im/model/IMChatRecord;)V

    .line 418
    invoke-direct {p0, v0, v3}, Lcom/didi/im/activity/ConversationActivity;->sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    .line 419
    return-void
.end method

.method private sendVoiceMessage(Lcom/didi/im/model/IMChatRecord;Z)V
    .locals 7
    .parameter "chatRecord"
    .parameter "resend"

    .prologue
    .line 508
    iget-object v0, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/didi/im/model/IMChatRecord;->createTime:J

    iget v5, p1, Lcom/didi/im/model/IMChatRecord;->voiceTime:I

    new-instance v6, Lcom/didi/im/activity/ConversationActivity$9;

    invoke-direct {v6, p0, p1, p2}, Lcom/didi/im/activity/ConversationActivity$9;-><init>(Lcom/didi/im/activity/ConversationActivity;Lcom/didi/im/model/IMChatRecord;Z)V

    invoke-static/range {v0 .. v6}, Lcom/didi/im/helper/IMPushHelper;->sendAudioMessage(JJLjava/lang/String;ILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 519
    return-void
.end method

.method private sendVoiceMessage(Ljava/lang/String;Z)V
    .locals 6
    .parameter "audioPath"
    .parameter "autoSend"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->currentUid:Ljava/lang/String;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/didi/im/activity/ConversationActivity;->recordTime:J

    invoke-static {v4, v5, p2}, Lcom/didi/im/helper/IMChatHelper;->getVoiceTime(JZ)I

    move-result v4

    invoke-static {v1, v2, v3, p1, v4}, Lcom/didi/im/helper/IMChatHelper;->createNewMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 503
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-direct {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->refreshList(Lcom/didi/im/model/IMChatRecord;)V

    .line 504
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/didi/im/activity/ConversationActivity;->sendVoiceMessage(Lcom/didi/im/model/IMChatRecord;Z)V

    .line 505
    return-void
.end method

.method private setListeners()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->notificationMessageListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    invoke-static {v1}, Lcom/didi/im/helper/IMPushHelper;->registerIMUnreadListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;)V

    .line 193
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    invoke-static {v1}, Lcom/didi/frame/push/PushHelper;->registReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V

    .line 194
    invoke-static {p0}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerInnerCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, mFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->netBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/didi/im/activity/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 265
    const v0, 0x7f0803bc

    invoke-virtual {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/ConversationTitleBar;

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    .line 266
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/im/helper/IMChatHelper;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/ConversationTitleBar;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;

    const v1, 0x7f020204

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/im/component/ConversationTitleBar;->setRightDrawable(ILandroid/view/View$OnClickListener;)V

    .line 268
    return-void
.end method

.method private showAudioRecordDialog()V
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordTime:J

    .line 434
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    invoke-virtual {v0, p0}, Lcom/didi/im/component/AudioRecordDialog;->showAudioDialog(Landroid/content/Context;)V

    .line 435
    return-void
.end method

.method private showDriverCountChangeDialog(Lcom/didi/taxi/model/TaxiFeeDetail;)V
    .locals 3
    .parameter "feeDetail"

    .prologue
    .line 764
    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    if-eqz v0, :cond_0

    .line 765
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 766
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->mDiaListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 769
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAnimatedThread()V
    .locals 1

    .prologue
    .line 460
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$8;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->animatedThread:Ljava/lang/Thread;

    .line 474
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->animatedThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 475
    return-void
.end method

.method private startAudioRecorder()V
    .locals 4

    .prologue
    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    .line 445
    new-instance v0, Lcom/didi/im/activity/ConversationActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/im/activity/ConversationActivity$7;-><init>(Lcom/didi/im/activity/ConversationActivity;)V

    invoke-static {v0}, Lcom/didi/im/helper/IMAudioHelper;->record(Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V

    .line 451
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget v2, Lcom/didi/im/helper/IMChatHelper;->MAX_RECORD_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 452
    return-void
.end method

.method private stopAudioRecorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    .line 456
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopRecording()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stopRecordAndSendMessage(Z)V
    .locals 4
    .parameter "autoSend"

    .prologue
    .line 309
    iget-wide v2, p0, Lcom/didi/im/activity/ConversationActivity;->recordTime:J

    invoke-static {v2, v3}, Lcom/didi/im/helper/IMChatHelper;->isAudioDurationTooShort(J)Z

    move-result v1

    .line 310
    .local v1, isRecordTooShort:Z
    if-eqz v1, :cond_0

    .line 311
    const v2, 0x7f0b0399

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->stopAudioRecorder()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, fid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    const v2, 0x7f0b0397

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/didi/im/activity/ConversationActivity;->sendVoiceMessage(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private varargs updateMessage(Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V
    .locals 10
    .parameter "chatRecord"
    .parameter "resend"
    .parameter "option"
    .parameter "success"
    .parameter "resultCode"
    .parameter "args"

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, hasShowSessionFrozenToast:Z
    sget v6, Lcom/didi/im/helper/IMChatHelper;->SESSION_FROZEN:I

    if-eq p5, v6, :cond_0

    sget v6, Lcom/didi/im/helper/IMChatHelper;->SESSION_DELETED:I

    if-ne p5, v6, :cond_2

    .line 540
    :cond_0
    const v6, 0x7f0b039c

    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 541
    iget v6, p1, Lcom/didi/im/model/IMChatRecord;->ID:I

    invoke-static {v6}, Lcom/didi/im/db/IMDBDataHelper;->deleteChatRecordById(I)I

    .line 542
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v6, p1}, Lcom/didi/im/adapter/ConversationAdapter;->deleteItem(Lcom/didi/im/model/IMChatRecord;)V

    .line 543
    const/4 v1, 0x1

    .line 593
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->currentUser:Lcom/didi/im/model/IMUser;

    if-nez v6, :cond_3

    if-nez v1, :cond_3

    .line 548
    const v6, 0x7f0b039d

    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 552
    :cond_3
    const/16 v6, -0x9

    if-ne p5, v6, :cond_4

    invoke-virtual {p0}, Lcom/didi/im/activity/ConversationActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 553
    invoke-virtual {p3}, Lcom/didi/frame/push/PushOptionRecord;->doOption()V

    goto :goto_0

    .line 557
    :cond_4
    const/4 v4, 0x0

    .line 558
    .local v4, needFetchMessage:Z
    const/4 v0, 0x0

    .line 559
    .local v0, fId:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 560
    .local v2, mId:J
    if-eqz p4, :cond_9

    .line 561
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 562
    const/4 v6, 0x0

    aget-object v6, p6, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 563
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v6}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 564
    const/4 v4, 0x1

    .line 566
    :cond_5
    long-to-int v6, v2

    iput v6, p1, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 567
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 568
    const/4 v6, 0x1

    aget-object v0, p6, v6

    .end local v0           #fId:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 573
    .restart local v0       #fId:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 574
    iget-object v6, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/didi/im/helper/IMFileHelper;->renameAudioFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 575
    iput-object v0, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 578
    :cond_7
    invoke-static {p1}, Lcom/didi/im/db/IMDBDataHelper;->updateChatRecord(Lcom/didi/im/model/IMChatRecord;)I

    .line 579
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v6, p1}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordSendState(Lcom/didi/im/model/IMChatRecord;)V

    .line 580
    if-eqz p2, :cond_8

    .line 581
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v7, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v7}, Lcom/didi/im/adapter/ConversationAdapter;->getDataSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 585
    :cond_8
    if-eqz v4, :cond_1

    .line 586
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v6}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    .line 587
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    if-eqz v6, :cond_1

    .line 588
    iget-object v6, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v6}, Lcom/didi/im/model/IMSession;->getMID()I

    move-result v5

    .line 589
    .local v5, receivedMaxId:I
    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/didi/im/activity/ConversationActivity;->getUnreadMessage(I)V

    goto/16 :goto_0

    .line 571
    .end local v5           #receivedMaxId:I
    :cond_9
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 750
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 751
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/didi/im/activity/ConversationActivity;->overridePendingTransition(II)V

    .line 752
    return-void
.end method

.method public onAudioRecordCancel()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->cancelAudioRecord()V

    .line 325
    return-void
.end method

.method public onAudioRecordEnd()V
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    .line 298
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->cancelMaxRecordTimeCheck()V

    .line 299
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->dismissAudioRecordDialog()V

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->stopRecordAndSendMessage(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public onAudioRecordStart()V
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/didi/im/activity/ConversationActivity;->recordState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->showAudioRecordDialog()V

    .line 289
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->startAudioRecorder()V

    .line 290
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->startAnimatedThread()V

    .line 292
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->back()V

    .line 741
    return-void
.end method

.method public onCommonMsgClicked()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 280
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->getDialogHelper(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)Lcom/didi/im/component/CommonMessagePopupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mPopupHelper:Lcom/didi/im/component/CommonMessagePopupHelper;

    .line 282
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mPopupHelper:Lcom/didi/im/component/CommonMessagePopupHelper;

    invoke-static {}, Lcom/didi/im/helper/IMChatHelper;->getCommonSentence()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/didi/im/component/CommonMessagePopupHelper;->showPopupWindow(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 283
    return-void
.end method

.method public onCommonResendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "chatRecord"

    .prologue
    .line 728
    return-void
.end method

.method public onCommonSendCommonMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/didi/im/activity/ConversationActivity;->sendTextMessage(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public onCostDetailReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V
    .locals 0
    .parameter "feeDetail"
    .parameter "isHint"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/didi/im/activity/ConversationActivity;->showDriverCountChangeDialog(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 757
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/didi/im/activity/ConversationActivity;->overridePendingTransition(II)V

    .line 158
    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->setContentView(I)V

    .line 159
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->initViews()V

    .line 160
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->getDataFromIntent()V

    .line 161
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->initChatData()V

    .line 162
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->session:Lcom/didi/im/model/IMSession;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;

    invoke-static {v0, v1}, Lcom/didi/im/helper/IMChatHelper;->saveDraftIfExist(Lcom/didi/im/model/IMSession;Lcom/didi/im/component/ConversationBottomBar;)V

    .line 400
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->saveImInputState()V

    .line 401
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/im/adapter/ConversationAdapter;->release()V

    .line 402
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->netBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->unregisterIMUnreadListener()V

    .line 404
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->reConnectionListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    invoke-static {v0}, Lcom/didi/frame/push/PushHelper;->unRegistReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V

    .line 405
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterInnerCostDetailListener()V

    .line 406
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopPlaying()V

    .line 407
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 408
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->cancelAudioRecord()V

    .line 393
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopPlaying()V

    .line 394
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onPause()V

    .line 395
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->getPrivousMessage()V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/im/adapter/ConversationAdapter;->getListMinPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/im/activity/ConversationActivity;->getMessagsFromDb(I)V

    goto :goto_0
.end method

.method public onResendMessage(Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "chatRecord"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/didi/im/activity/ConversationActivity;->resendMessage(Lcom/didi/im/model/IMChatRecord;)V

    .line 388
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/didi/im/activity/ConversationActivity;->restoreDraft()V

    .line 250
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onResume()V

    .line 251
    return-void
.end method

.method public onSlideBack()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/im/component/AudioRecordDialog;->setTip(Z)V

    .line 349
    return-void
.end method

.method public onSlideUpwards()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/AudioRecordDialog;->setTip(Z)V

    .line 344
    return-void
.end method

.method public onTextMessageSend(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/didi/im/activity/ConversationActivity;->sendTextMessage(Ljava/lang/String;)V

    .line 339
    return-void
.end method
