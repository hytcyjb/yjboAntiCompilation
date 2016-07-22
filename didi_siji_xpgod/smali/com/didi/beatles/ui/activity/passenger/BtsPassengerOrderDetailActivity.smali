.class public Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPassengerOrderDetailActivity.java"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mLoadingLayout:Landroid/view/View;

.field private mOrderId:Ljava/lang/String;

.field private net_error_layout:Landroid/view/View;

.field private reloadOrderListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mOrderId:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$2;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->reloadOrderListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->loadOrderInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->net_error_layout:Landroid/view/View;

    return-object v0
.end method

.method private initTitlebar()V
    .locals 2

    .prologue
    .line 70
    const v1, 0x7f080154

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 71
    .local v0, titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawableListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 73
    return-void
.end method

.method private loadOrderInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "orderId"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    const-string v0, ""

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)V

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 120
    return-void
.end method

.method private parseIntent()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    move v1, v2

    .line 135
    :goto_0
    return v1

    .line 128
    :cond_0
    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mOrderId:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mOrderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v1, "order id is empty."

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    move v1, v2

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "orderId"

    .prologue
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, "order id is empty."

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    const-string v2, "order"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const/16 v2, 0x70

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->parseIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->finish()V

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mLoadingLayout:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->net_error_layout:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->net_error_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->net_error_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->reloadOrderListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->initTitlebar()V

    .line 66
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mOrderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->loadOrderInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
