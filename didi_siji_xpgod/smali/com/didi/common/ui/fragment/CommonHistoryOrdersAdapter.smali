.class public Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonHistoryOrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public doneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/didi/common/model/OrderHistory;

.field public mContext:Landroid/content/Context;

.field private mEditMode:Z

.field public mInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field public waitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/OrderHistory;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->waitList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->doneList:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    .line 41
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, waitList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    .local p3, doneList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->waitList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->doneList:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    .line 46
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->waitList:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->doneList:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-void
.end method

.method private getCurrentItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/OrderHistory;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    .line 188
    :cond_0
    return-void
.end method

.method private setAddress(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v0, v0, Lcom/didi/common/model/OrderHistory;->to:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mTo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mTo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v1, v1, Lcom/didi/common/model/OrderHistory;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v0, v0, Lcom/didi/common/model/OrderHistory;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFrom:Landroid/widget/TextView;

    const v1, 0x7f0b03e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :goto_1
    return-void

    .line 199
    :cond_0
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mTo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFrom:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v1, v1, Lcom/didi/common/model/OrderHistory;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setCarOrderImg(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 3
    .parameter "position"
    .parameter "holder"

    .prologue
    .line 117
    invoke-virtual {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->hideAllImg()V

    .line 118
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/OrderHistory;

    .line 119
    .local v0, order:Lcom/didi/common/model/OrderHistory;
    iget-object v1, v0, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_1

    .line 120
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 121
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;
    invoke-static {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, v0, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    .line 125
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 126
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    const v2, 0x7f020270

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, v0, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_3

    .line 128
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 129
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v1, v0, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_5

    .line 131
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;
    invoke-static {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 132
    iget v1, v0, Lcom/didi/common/model/OrderHistory;->role:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 133
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;
    invoke-static {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;

    move-result-object v1

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 135
    :cond_4
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;
    invoke-static {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 137
    :cond_5
    iget-object v1, v0, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 138
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->ddriveOrderImg:Lx/ImageView;
    invoke-static {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 139
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->ddriveOrderImg:Lx/ImageView;
    invoke-static {p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;

    move-result-object v1

    const v2, 0x7f02018a

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setCheckBox(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 5
    .parameter "position"
    .parameter "holder"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/OrderHistory;

    .line 218
    .local v0, order:Lcom/didi/common/model/OrderHistory;
    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 219
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mark:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/didi/common/model/OrderHistory;->checked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-boolean v1, v0, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mark:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 222
    :cond_0
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->imgArrow:Lx/ImageView;

    invoke-virtual {v1, v4}, Lx/ImageView;->setVisibility(I)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mark:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 226
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->imgArrow:Lx/ImageView;

    invoke-virtual {v1, v3}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIMUnRead(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 8
    .parameter "holder"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 154
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->imgArrow:Lx/ImageView;

    .line 155
    .local v0, arrow:Landroid/view/View;
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    .line 156
    .local v3, unreadView:Landroid/widget/TextView;
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadLongView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    .line 158
    .local v2, unreadLongView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v4, v4, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v5, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget v4, v4, Lcom/didi/common/model/OrderHistory;->imUnread:I

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    if-nez v4, :cond_2

    .line 160
    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget v1, v4, Lcom/didi/common/model/OrderHistory;->imUnread:I

    .line 162
    .local v1, count:I
    const/16 v4, 0x9

    if-le v1, v4, :cond_1

    .line 163
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const/16 v4, 0x63

    if-le v1, v4, :cond_0

    const-string v4, "99+"

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .end local v1           #count:I
    :goto_2
    return-void

    .line 165
    .restart local v1       #count:I
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    .end local v1           #count:I
    :cond_2
    iget-boolean v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    if-nez v4, :cond_3

    .line 175
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 179
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setIsShowFinishView(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;I)V
    .locals 2
    .parameter "holder"
    .parameter "pos"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->waitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFinishView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFinishView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNoOrderTip(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 2
    .parameter "position"
    .parameter "holder"

    .prologue
    .line 191
    iget-object v0, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mNoOrderTip:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 192
    return-void
.end method

.method private setOrderStataus(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 144
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v1, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget v0, v0, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mState:Landroid/widget/TextView;

    const v1, 0x7f07002f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mState:Landroid/widget/TextView;

    const v1, 0x7f070021

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTime(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 3
    .parameter "position"
    .parameter "holder"

    .prologue
    .line 210
    invoke-direct {p0, p2, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setIsShowFinishView(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;I)V

    .line 211
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v1, v1, Lcom/didi/common/model/OrderHistory;->time:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->convertDateTime(J)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, str:[Ljava/lang/String;
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mDateView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mTimeView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method private setTips(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v0, v0, Lcom/didi/common/model/OrderHistory;->tips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mIncreaseTipsView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mIncreaseTipsView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->info:Lcom/didi/common/model/OrderHistory;

    iget-object v1, v1, Lcom/didi/common/model/OrderHistory;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mIncreaseTipsView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteOrderList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, delOrders:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    .line 324
    .local v2, orders:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    const/4 v3, 0x0

    .line 325
    .local v3, size:I
    if-eqz p1, :cond_0

    .line 326
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 329
    :cond_0
    if-nez v3, :cond_2

    .line 340
    :cond_1
    return-void

    .line 333
    :cond_2
    const/4 v1, 0x0

    .line 334
    .local v1, order:Lcom/didi/common/model/OrderHistory;
    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 335
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #order:Lcom/didi/common/model/OrderHistory;
    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 336
    .restart local v1       #order:Lcom/didi/common/model/OrderHistory;
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;)V

    .line 75
    .restart local v0       #holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    const v1, 0x7f08018f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mTimeView:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0804a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mDateView:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0804b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFrom:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0804b2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mTo:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0804ae

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mState:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f080489

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mFinishView:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0804b3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->imgArrow:Lx/ImageView;

    .line 82
    const v1, 0x7f080487

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mNoOrderTip:Lx/ImageView;

    .line 83
    const v1, 0x7f0804aa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mIncreaseTipsView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$002(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0804b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mark:Landroid/widget/CheckBox;

    .line 85
    const v1, 0x7f0804ab

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    .line 86
    const v1, 0x7f0804ad

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$102(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Lx/ImageView;)Lx/ImageView;

    .line 87
    const v1, 0x7f0804ac

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->ddriveOrderImg:Lx/ImageView;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$202(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Lx/ImageView;)Lx/ImageView;

    .line 88
    const v1, 0x7f0804b4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$302(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0804b5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadLongView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->access$402(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 90
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->getCurrentItem(I)V

    .line 97
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setAddress(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 99
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setTips(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setCarOrderImg(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setNoOrderTip(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setCheckBox(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setTime(ILcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setOrderStataus(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setIMUnRead(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)V

    .line 113
    return-object p2

    .line 93
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    check-cast v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    return v0
.end method

.method public isItemSelected(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;

    .line 307
    .local v0, holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    iget-object v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mark:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    return v1
.end method

.method public setEditMode(Z)V
    .locals 1
    .parameter "editMode"

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    .line 293
    .local v0, curEditMode:Z
    if-ne v0, p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->mEditMode:Z

    .line 298
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setItemSelected(Landroid/view/View;IZ)V
    .locals 3
    .parameter "view"
    .parameter "pos"
    .parameter "selected"

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;

    .line 313
    .local v0, holder:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
    iget-object v2, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mark:Landroid/widget/CheckBox;

    invoke-virtual {v2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 315
    invoke-virtual {p0, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 316
    .local v1, order:Lcom/didi/common/model/OrderHistory;
    iget-boolean v2, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    if-nez v2, :cond_0

    .line 317
    iput-boolean p3, v1, Lcom/didi/common/model/OrderHistory;->checked:Z

    .line 318
    :cond_0
    return-void
.end method
