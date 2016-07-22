.class public Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtsPassengerPendingOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFooterView:Landroid/view/View;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassengerPending;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mFooterView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->setNoContentLayout(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->initCommonDialog()Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->refreshButtonState(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 608
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 610
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method private bindUI(Landroid/view/View;Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;)V
    .locals 1
    .parameter "root"
    .parameter "holder"

    .prologue
    .line 87
    const v0, 0x7f0800e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->profile:Landroid/view/View;

    .line 88
    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0800e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0800e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->desc:Lcom/didi/common/richtextview/RichTextView;

    .line 93
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/RedTipTextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    .line 95
    const v0, 0x7f080144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->day:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f080145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f08014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->from:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->to:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->passenger_msg:Lcom/didi/common/richtextview/RichTextView;

    .line 102
    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->bts_xingcheng_layout:Landroid/view/View;

    .line 105
    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->root:Landroid/view/View;

    .line 107
    const v0, 0x7f08009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->submit:Landroid/widget/Button;

    .line 108
    return-void
.end method

.method private cancelOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 5
    .parameter "button"
    .parameter "order"

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 225
    const v0, 0x7f02004e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 227
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/beatles/common/BtsCommonListeners;->getCancelOrderListener(Landroid/app/Activity;Ljava/lang/String;IILandroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method private checkOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    const v0, 0x7f0b00a1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 235
    const v0, 0x7f020051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 236
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 238
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$3;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method

.method private commentOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    const v0, 0x7f0b00a4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 278
    const v0, 0x7f020051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 279
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 281
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method private fillUI(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 6
    .parameter "holder"
    .parameter "order"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->head_img_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    const v2, 0x7f020071

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 341
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$6;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$6;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    const-string v0, "1"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    :goto_0
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->car_auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    :goto_1
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 378
    iget-boolean v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->can_im:Z

    if-nez v0, :cond_4

    .line 380
    iput-boolean v3, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->isImCanUse:Z

    .line 381
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 382
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->im_disabled_msg:Ljava/lang/String;

    iput-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im_disable_msg:Ljava/lang/String;

    .line 394
    :goto_2
    iget-boolean v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->can_call:Z

    if-nez v0, :cond_7

    .line 395
    iput-boolean v3, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->isPhoneCanUse:Z

    .line 396
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->call_disabled_msg:Ljava/lang/String;

    iput-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    .line 397
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 404
    :goto_3
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->desc:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->day:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->text_setup_time:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 407
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->from:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->to:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->passenger_msg:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->submit:Landroid/widget/Button;

    invoke-direct {p0, v0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->refreshButtonState(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->refreshIMPhoneState(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    .line 414
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->bts_xingcheng_layout:Landroid/view/View;

    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$9;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$9;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$10;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$10;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    return-void

    .line 358
    :cond_0
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 361
    :cond_1
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 370
    :cond_2
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 373
    :cond_3
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 385
    :cond_4
    iput-boolean v4, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->isImCanUse:Z

    .line 386
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 387
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->isHasSessionUnread(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->isHasMessage:Z

    if-eqz v0, :cond_6

    .line 388
    :cond_5
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 390
    :cond_6
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 399
    :cond_7
    iput-boolean v4, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->isPhoneCanUse:Z

    .line 400
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->call_disabled_msg:Ljava/lang/String;

    iput-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    .line 401
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method private initCommonDialog()Lcom/didi/common/helper/DialogHelper;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v1, ""

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0085

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 217
    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 218
    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 219
    return-object v0
.end method

.method private payOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    const v0, 0x7f0b00b6

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 257
    const v0, 0x7f020052

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 258
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 260
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$4;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method private refreshButtonState(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 3
    .parameter "button"
    .parameter "order"

    .prologue
    .line 306
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->status:Ljava/lang/String;

    .line 307
    .local v0, status:Ljava/lang/String;
    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->sub_status:Ljava/lang/String;

    .line 309
    .local v1, subSatus:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->checkOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->resentOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    goto :goto_0

    .line 320
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->checkOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    goto :goto_0

    .line 323
    :cond_3
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->payOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->commentOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    goto :goto_0

    .line 328
    :cond_5
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 329
    const v2, 0x7f0b00a5

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 330
    :cond_6
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const v2, 0x7f0b00a6

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private refreshIMPhoneState(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 4
    .parameter "holder"
    .parameter "order"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 296
    const-string v0, "0"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setTextViewVisibility(I)V

    .line 298
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/component/RedTipTextView;->setTextViewVisibility(I)V

    .line 301
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resentOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    const v0, 0x7f0b00d4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 195
    const v0, 0x7f02004e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 196
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 198
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$2;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method private setNoContentLayout(Landroid/view/View;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 111
    const v2, 0x7f08013a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    const v2, 0x7f08013c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, tv1:Landroid/widget/TextView;
    const v2, 0x7f0b0099

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    const v2, 0x7f08013b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    .local v1, tv2:Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method private setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter "day"
    .parameter "hour"
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 493
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 501
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 502
    .local v2, pos:I
    if-eq v2, v4, :cond_0

    .line 503
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, day_tmp:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, hour_tmp:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showCancelOrderEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 125
    const v0, 0x7f02004e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x1

    .line 547
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-object v0

    .line 556
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 565
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mFooterView:Landroid/view/View;

    .line 603
    :goto_0
    return-object v1

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 589
    .local v0, holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 590
    :cond_1
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)V

    .line 591
    .restart local v0       #holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 594
    invoke-direct {p0, p2, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->bindUI(Landroid/view/View;Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;)V

    .line 596
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 600
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 601
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    :cond_2
    move-object v1, p2

    .line 603
    goto :goto_0

    .line 598
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;
    check-cast v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x2

    return v0
.end method

.method public mergeData(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassengerPending;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/order/BtsOrderPassengerPending;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 526
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 527
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 534
    .end local v1           #index:I
    :cond_3
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public mergeData2(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassengerPending;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/order/BtsOrderPassengerPending;>;"
    if-nez p1, :cond_0

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    .line 517
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
