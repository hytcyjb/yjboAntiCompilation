.class public Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "TextOrderMarkerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 19
    const v0, 0x7f0300cb

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->setLayout(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public hideArrow()V
    .locals 5

    .prologue
    const v4, 0x7f0801b0

    const/4 v3, 0x4

    .line 37
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .local v1, ivp:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public setInfo(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 24
    const v4, 0x7f080443

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 25
    .local v1, from:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 26
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, start:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .end local v2           #start:Ljava/lang/String;
    :cond_0
    const v4, 0x7f080445

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    .local v3, to:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 31
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, end:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .end local v0           #end:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public showArrow()V
    .locals 5

    .prologue
    const v4, 0x7f0801b0

    const/4 v3, 0x0

    .line 44
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, ivp:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    return-void
.end method
