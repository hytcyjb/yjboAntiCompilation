.class public Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CarPayWxAgentFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;


# static fields
.field private static final MARK_CHECK_PAY_RESULT:I = 0xd

.field private static final STATUS_BIND:I = 0x1

.field private static final STATUS_UNBIND:I = 0x0

.field private static final STATUS_UNKOWN:I = -0x1

.field private static times:I


# instance fields
.field private dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field listener:Lcom/didi/common/net/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarWxAgentStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mAgreeLayout:Landroid/widget/LinearLayout;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBindConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mBindStr:Ljava/lang/String;

.field private mCarPayParams:Lcom/didi/car/model/CarPayParams;

.field private mCheckPayResultIntent:Landroid/content/Intent;

.field private mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mContext:Landroid/content/Context;

.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field mHandler:Landroid/os/Handler;

.field private mIsWxSdk:Z

.field private mNoticeStr:Ljava/lang/String;

.field private mPayHelper:Lcom/didi/car/helper/CarPayHelper;

.field private mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

.field private mTxtViewRetry:Landroid/widget/TextView;

.field private mWxAgentContentLayout:Landroid/widget/LinearLayout;

.field private mWxAgentLayout:Landroid/widget/LinearLayout;

.field private mWxAgentRetryLayout:Landroid/widget/LinearLayout;

.field private switchListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

.field private wxAgentFaildListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    sput v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->times:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindStr:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mNoticeStr:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$4;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->switchListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    .line 285
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->listener:Lcom/didi/common/net/ResponseListener;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 452
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->wxAgentFaildListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 471
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$11;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 503
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$12;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 537
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$13;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 576
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$14;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBackListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getWxAgentStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/common/ui/component/SwitchBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentFaild(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->times:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->times:I

    return p0
.end method

.method static synthetic access$1308()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->times:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->times:I

    return v0
.end method

.method static synthetic access$1400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->cancelPayResultCheckAlarm()V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mAgreeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->removeDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->doWxAgent()V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->cancelWxAgent()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mNoticeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mNoticeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showBindConfirmDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showConfirmDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/car/model/CarPayParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCarPayParams:Lcom/didi/car/model/CarPayParams;

    return-object v0
.end method

.method static synthetic access$802(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/car/model/CarPayParams;)Lcom/didi/car/model/CarPayParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCarPayParams:Lcom/didi/car/model/CarPayParams;

    return-object p1
.end method

.method static synthetic access$900(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/car/helper/CarPayHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    return-object v0
.end method

.method private cancelPayResultCheckAlarm()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCheckPayResultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCheckPayResultIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 280
    const/4 v0, 0x1

    sput v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->times:I

    .line 282
    :cond_0
    return-void
.end method

.method private cancelWxAgent()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->cancelWxAgentBind(Lcom/didi/common/net/ResponseListener;)V

    .line 423
    return-void
.end method

.method private changedUIByBindStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 129
    if-ne p1, v3, :cond_0

    .line 130
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentRetryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mAgreeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentRetryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mAgreeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentRetryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private doWXPayRequest(Lcom/didi/car/model/CarPayParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mIsWxSdk:Z

    .line 378
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarPayHelper;->sendWXPayRequest(Lcom/didi/car/model/CarPayParams;)V

    goto :goto_0
.end method

.method private doWxAgent()V
    .locals 3

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;

    .end local v0           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 225
    .restart local v0       #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/didi/car/net/CarRequest;->doWxAgentBind(ILcom/didi/common/net/ResponseListener;)V

    .line 227
    const-string v1, "car_wxagent_set_bind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private getWxAgentStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 148
    new-instance v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    invoke-static {v4, v4, v0}, Lcom/didi/car/net/CarRequest;->getWxAgentStatus(IILcom/didi/common/net/ResponseListener;)V

    .line 178
    return-void
.end method

.method private initPayResultCheckAlarm()V
    .locals 6

    .prologue
    .line 258
    const v3, 0x7f0b043a

    invoke-direct {p0, v3}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showLoadingDialog(I)V

    .line 260
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mHandler:Landroid/os/Handler;

    .line 261
    .local v0, handler:Landroid/os/Handler;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 262
    .local v2, msg:Landroid/os/Message;
    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    .line 264
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkPayResultHandler(Landroid/os/Handler;)V

    .line 265
    new-instance v3, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;

    invoke-direct {v3, p0, v1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCarPayParams:Lcom/didi/car/model/CarPayParams;

    iget v4, v4, Lcom/didi/car/model/CarPayParams;->pollingFreguency:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCheckPayResultIntent:Landroid/content/Intent;

    .line 275
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 97
    const v1, 0x7f080053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentLayout:Landroid/widget/LinearLayout;

    .line 98
    const v1, 0x7f08005b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentRetryLayout:Landroid/widget/LinearLayout;

    .line 100
    const v1, 0x7f080057

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f080058

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mAgreeLayout:Landroid/widget/LinearLayout;

    .line 103
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mAgreeLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$1;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f08005c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mTxtViewRetry:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mTxtViewRetry:Landroid/widget/TextView;

    new-instance v2, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$2;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$2;-><init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f080056

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/SwitchBar;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    .line 118
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->switchListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    .line 119
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 121
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 123
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/SwitchBar;->setXprefValue(II)V

    .line 125
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getWxAgentStatus()V

    .line 126
    return-void
.end method

.method private obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;
    .locals 4
    .parameter "msg"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, action:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 359
    const-string v0, "check_pay_result"

    .line 362
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    return-object v1
.end method

.method private removeDialog()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 484
    :cond_0
    return-void
.end method

.method private removeLoadingDialog()V
    .locals 0

    .prologue
    .line 608
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 609
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 182
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 183
    const v1, 0x7f0b0234

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 184
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 185
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 186
    return-void
.end method

.method private showBindConfirmDialog()V
    .locals 3

    .prologue
    .line 522
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 523
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b05a8

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 526
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b05a7

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 529
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 531
    const-string v0, "pgxpaywxag01_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 490
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 491
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b05a1

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b059f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 494
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b05a0

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b05a2

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 497
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 498
    return-void
.end method

.method private showLoadingDialog(I)V
    .locals 4
    .parameter "msgId"

    .prologue
    .line 600
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, content:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 602
    return-void
.end method

.method private showWXLowVersionDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 627
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0475

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 630
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 632
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 633
    return-void
.end method

.method private showWXUnstalledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 615
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 616
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0599

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 619
    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 620
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 621
    return-void
.end method

.method private showWxAgentFaild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 430
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, "&"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 432
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b05a4

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b043d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->wxAgentFaildListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 435
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "iconType"
    .parameter "title"
    .parameter "content"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 441
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 442
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, "&"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 444
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 446
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 592
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 593
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 89
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 91
    new-instance v1, Lcom/didi/car/helper/CarPayHelper;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/didi/car/helper/CarPayHelper;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    .line 92
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    invoke-virtual {v1, p0}, Lcom/didi/car/helper/CarPayHelper;->setListener(Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;)V

    .line 93
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->setTitleBar()V

    .line 77
    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->initViews(Landroid/view/View;)V

    .line 79
    const-string v1, "car_wxagent_set_show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 637
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 638
    return-void
.end method

.method public onPay(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxi--onpay result code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 238
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_1

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mIsWxSdk:Z

    .line 240
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->initPayResultCheckAlarm()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 385
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mIsWxSdk:Z

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mIsWxSdk:Z

    .line 387
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->initPayResultCheckAlarm()V

    .line 389
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 587
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 588
    return-void
.end method

.method public onWXAppLowVersionInstalled()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWXLowVersionDialog()V

    .line 563
    return-void
.end method

.method public onWXAppSupported(Lcom/didi/car/model/CarPayParams;)V
    .locals 0
    .parameter "payParams"

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->doWXPayRequest(Lcom/didi/car/model/CarPayParams;)V

    .line 568
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWXUnstalledDialog()V

    .line 558
    return-void
.end method
