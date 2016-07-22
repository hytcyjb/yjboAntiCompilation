.class public Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtsRouteConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/route/BtsRoute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$600(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindUI(Landroid/view/View;Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)V
    .locals 1
    .parameter "convertView"
    .parameter "holder"

    .prologue
    .line 108
    const v0, 0x7f0800e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #setter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->lineView:Landroid/view/View;
    invoke-static {p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$002(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 109
    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->time:Landroid/widget/TextView;
    invoke-static {p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$102(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 110
    const v0, 0x7f080190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/SwitchBar;

    #setter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$202(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Lcom/didi/common/ui/component/SwitchBar;)Lcom/didi/common/ui/component/SwitchBar;

    .line 112
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {p2}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 113
    const v0, 0x7f080194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->from_addr:Landroid/widget/TextView;
    invoke-static {p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$302(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 114
    const v0, 0x7f080197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->to_addr:Landroid/widget/TextView;
    invoke-static {p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$402(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 115
    const v0, 0x7f080191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #setter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->address_layout:Landroid/view/View;
    invoke-static {p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$502(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 116
    return-void
.end method

.method private fillUI(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Lcom/didi/beatles/model/route/BtsRoute;)V
    .locals 6
    .parameter "holder"
    .parameter "route"

    .prologue
    .line 120
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->time:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$100(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0103

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v1

    iget-boolean v2, p2, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 122
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v1

    new-instance v2, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;Lcom/didi/beatles/model/route/BtsRoute;Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    .line 149
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 151
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/SwitchBar;->setXprefValue(II)V

    .line 156
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->from_addr:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$300(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/didi/beatles/model/route/BtsRoute;->from_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->to_addr:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$400(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/didi/beatles/model/route/BtsRoute;->to_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->address_layout:Landroid/view/View;
    invoke-static {p1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$500(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;Lcom/didi/beatles/model/route/BtsRoute;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 82
    :cond_0
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;)V

    .line 83
    .restart local v0       #holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-direct {p0, p2, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->bindUI(Landroid/view/View;Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)V

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 104
    :cond_1
    :goto_1
    return-object p2

    .line 90
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
    check-cast v0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
    goto :goto_0

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/route/BtsRoute;

    .line 96
    .local v1, route:Lcom/didi/beatles/model/route/BtsRoute;
    if-eqz v1, :cond_1

    .line 99
    if-nez p1, :cond_4

    .line 100
    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->lineView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$000(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->fillUI(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Lcom/didi/beatles/model/route/BtsRoute;)V

    goto :goto_1
.end method

.method public mergeData2(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/route/BtsRoute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/route/BtsRoute;>;"
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
