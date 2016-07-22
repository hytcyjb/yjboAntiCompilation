.class public Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtsDriverPendingOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
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
            "Lcom/didi/beatles/model/order/BtsOrderDriverPending;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mFooterView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->setNoContentLayout(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
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

    .line 457
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method private bindUI(Landroid/view/View;Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;)V
    .locals 1
    .parameter "root"
    .parameter "holder"

    .prologue
    .line 85
    const v0, 0x7f0800e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->profile:Landroid/view/View;

    .line 86
    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0800e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0800e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->desc:Lcom/didi/common/richtextview/RichTextView;

    .line 91
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/RedTipTextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    .line 93
    const v0, 0x7f080144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->day:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f080145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f08014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->from:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->to:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->passenger_msg:Lcom/didi/common/richtextview/RichTextView;

    .line 99
    const v0, 0x7f08009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->submit:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->bts_xingcheng_layout:Landroid/view/View;

    .line 102
    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->root:Landroid/view/View;

    .line 104
    return-void
.end method

.method private commentPassengerEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 138
    const v0, 0x7f020051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    const v0, 0x7f0b00a2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 142
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method private fillUI(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
    .locals 6
    .parameter "holder"
    .parameter "order"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->head_img_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    const v2, 0x7f020071

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 200
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    const-string v0, "1"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :goto_0
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->car_auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :goto_1
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 240
    iget-boolean v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->can_im:Z

    if-nez v0, :cond_4

    .line 242
    iput-boolean v3, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->isImCanUse:Z

    .line 243
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->im_disabled_msg:Ljava/lang/String;

    iput-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im_disable_msg:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 255
    :goto_2
    iget-boolean v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->can_call:Z

    if-nez v0, :cond_7

    .line 256
    iput-boolean v3, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->isPhoneCanUse:Z

    .line 257
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->call_disabled_msg:Ljava/lang/String;

    iput-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    :goto_3
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->desc:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->day:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->text_setup_time:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 266
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->from:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->from_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->to:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->to_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->passenger_msg:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->submit:Landroid/widget/Button;

    invoke-direct {p0, v0, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->refreshButtonState(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    .line 272
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->bts_xingcheng_layout:Landroid/view/View;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$6;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$6;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$7;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$7;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void

    .line 219
    :cond_0
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 223
    :cond_1
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 232
    :cond_2
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 235
    :cond_3
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 247
    :cond_4
    iput-boolean v4, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->isImCanUse:Z

    .line 248
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 249
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->isHasSessionUnread(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->isHasMessage:Z

    if-eqz v0, :cond_6

    .line 250
    :cond_5
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 252
    :cond_6
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 260
    :cond_7
    iput-boolean v4, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->isPhoneCanUse:Z

    .line 261
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->call_disabled_msg:Ljava/lang/String;

    iput-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method private orderDoneEventHandle2(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
    .locals 2
    .parameter "button"
    .parameter "order"

    .prologue
    .line 108
    const v0, 0x7f020052

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    const v0, 0x7f0b00a7

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 112
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method private refreshButtonState(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
    .locals 5
    .parameter "button"
    .parameter "order"

    .prologue
    const v4, 0x7f0b00a0

    .line 157
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->status:Ljava/lang/String;

    .line 158
    .local v0, status:Ljava/lang/String;
    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->sub_status:Ljava/lang/String;

    .line 160
    .local v1, subSatus:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    const v2, 0x7f020052

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const v2, 0x7f0b00b9

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const v2, 0x7f0b00a6

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 169
    :cond_2
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const v2, 0x7f0b00ad

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 172
    :cond_3
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    const v2, 0x7f0b00a8

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 175
    :cond_4
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->orderDoneEventHandle2(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    goto :goto_0

    .line 178
    :cond_5
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    const v2, 0x7f0b00a3

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 180
    :cond_6
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->commentPassengerEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    goto :goto_0

    .line 183
    :cond_7
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 184
    const v2, 0x7f0b00a5

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 185
    :cond_8
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 187
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 188
    :cond_9
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 189
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 190
    :cond_a
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method private setNoContentLayout(Landroid/view/View;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 127
    const v2, 0x7f08013a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    const v2, 0x7f08013c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, tv1:Landroid/widget/TextView;
    const v2, 0x7f0b0099

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v2, 0x7f08013b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    .local v1, tv2:Landroid/widget/TextView;
    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-void
.end method

.method private setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter "day"
    .parameter "hour"
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 339
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 347
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 348
    .local v2, pos:I
    if-eq v2, v4, :cond_0

    .line 349
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, day_tmp:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, hour_tmp:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 413
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

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
    .line 432
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mFooterView:Landroid/view/View;

    .line 450
    :goto_0
    return-object v1

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 437
    .local v0, holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 438
    :cond_1
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;)V

    .line 439
    .restart local v0       #holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 441
    invoke-direct {p0, p2, v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->bindUI(Landroid/view/View;Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;)V

    .line 443
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 447
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V

    :cond_2
    move-object v1, p2

    .line 450
    goto :goto_0

    .line 445
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
    check-cast v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 418
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
            "Lcom/didi/beatles/model/order/BtsOrderDriverPending;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/order/BtsOrderDriverPending;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 373
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 374
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 381
    .end local v1           #index:I
    :cond_3
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->notifyDataSetChanged()V

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
            "Lcom/didi/beatles/model/order/BtsOrderDriverPending;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/order/BtsOrderDriverPending;>;"
    if-nez p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mList:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
