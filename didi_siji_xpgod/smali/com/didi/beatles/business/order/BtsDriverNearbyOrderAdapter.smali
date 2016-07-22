.class public Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtsDriverNearbyOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mFooterView:Landroid/view/View;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mFooterView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->setNoContentLayout(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindUI(Landroid/view/View;Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;)V
    .locals 1
    .parameter "root"
    .parameter "holder"

    .prologue
    .line 65
    const v0, 0x7f0800e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->profile:Landroid/view/View;

    .line 66
    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0800e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0800e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->im:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f080144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->day:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f080145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f08014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->from:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->to:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->passenger_msg:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f08009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->submit:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->bts_xingcheng_layout:Landroid/view/View;

    .line 82
    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->root:Landroid/view/View;

    .line 83
    return-void
.end method

.method private fillUI(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
    .locals 6
    .parameter "holder"
    .parameter "order"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 189
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_head_img_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    const v2, 0x7f020071

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 191
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    const-string v0, "1"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :goto_0
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_nick_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->car_auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    :goto_1
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_trip_num:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->phone:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->im:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->day:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->text_setup_time:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->from:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->from_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->to:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->to_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->passenger_msg:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->extra_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->submit:Landroid/widget/Button;

    invoke-direct {p0, v0, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->refreshHoldOrderStateBtn(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    .line 239
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->bts_xingcheng_layout:Landroid/view/View;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$4;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-void

    .line 208
    :cond_0
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 211
    :cond_1
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 220
    :cond_2
    const-string v0, "2"

    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 223
    :cond_3
    iget-object v0, p1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->verify:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private refreshHoldOrderStateBtn(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
    .locals 6
    .parameter "button"
    .parameter "order"

    .prologue
    const v5, 0x7f0b00a0

    const v4, 0x7f0b00a6

    .line 149
    iget-object v0, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->status:Ljava/lang/String;

    .line 150
    .local v0, status:Ljava/lang/String;
    iget-object v1, p2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->substatus:Ljava/lang/String;

    .line 152
    .local v1, subSatus:Ljava/lang/String;
    const v2, 0x7f020052

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 153
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 154
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->striveOrderEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 160
    :cond_2
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 163
    :cond_3
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    const v2, 0x7f0b00ab

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 166
    :cond_4
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const v2, 0x7f0b00a7

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 169
    :cond_5
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const v2, 0x7f0b00aa

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 173
    :cond_6
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    const v2, 0x7f0b00a9

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 175
    :cond_7
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    const v2, 0x7f0b0052

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 177
    :cond_8
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 179
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 180
    :cond_9
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 181
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 182
    :cond_a
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method private setNoContentLayout(Landroid/view/View;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 106
    const v2, 0x7f08013a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    const v2, 0x7f08013c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, tv1:Landroid/widget/TextView;
    const v2, 0x7f0b0096

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const v2, 0x7f08013b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, tv2:Landroid/widget/TextView;
    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    return-void
.end method

.method private setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter "day"
    .parameter "hour"
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 86
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 94
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 95
    .local v2, pos:I
    if-eq v2, v4, :cond_0

    .line 96
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, day_tmp:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, hour_tmp:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private striveOrderEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
    .locals 1
    .parameter "button"
    .parameter "order"

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    const v0, 0x7f0b008b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 118
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 304
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

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
    .line 323
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mFooterView:Landroid/view/View;

    .line 341
    :goto_0
    return-object v1

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 328
    .local v0, holder:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 329
    :cond_1
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)V

    .line 330
    .restart local v0       #holder:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 332
    invoke-direct {p0, p2, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->bindUI(Landroid/view/View;Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;)V

    .line 334
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V

    :cond_2
    move-object v1, p2

    .line 341
    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
    check-cast v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x2

    return v0
.end method

.method public mergeData2(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/order/BtsOrderDriverListItem;>;"
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
