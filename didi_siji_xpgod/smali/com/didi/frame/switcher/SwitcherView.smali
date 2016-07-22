.class public Lcom/didi/frame/switcher/SwitcherView;
.super Lcom/didi/common/base/BaseLayout;
.source "SwitcherView.java"


# instance fields
.field private adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

.field private cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08056c
    .end annotation
.end field

.field private switcherPanelTop:I

.field private switcherViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/switcher/SwitcherView;)Lcom/didi/frame/switcher/SwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/switcher/SwitcherView;)Lcom/didi/frame/switcher/SwitcherPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    return-object v0
.end method

.method private addListener()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "addListener"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/didi/frame/switcher/SwitcherView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/SwitcherView$1;-><init>(Lcom/didi/frame/switcher/SwitcherView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 169
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 170
    return-void
.end method

.method private initAllProduct(Lcom/didi/frame/switcher/SwitcherAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 75
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-virtual {p1, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->addBuiness(Lcom/didi/frame/business/Business;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/didi/frame/switcher/SwitcherAdapter;->addBuiness(Lcom/didi/frame/business/Business;I)V

    .line 82
    :cond_1
    return-void
.end method

.method private initialAdjust()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "DoFragmentSwitcherView"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 191
    return-void
.end method


# virtual methods
.method public addBusiness(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->containsBuiness(Lcom/didi/frame/business/Business;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->addBuiness(Lcom/didi/frame/business/Business;)V

    .line 119
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->notifyChanged()V

    goto :goto_0
.end method

.method public addBusiness(Lcom/didi/frame/business/Business;I)V
    .locals 1
    .parameter "business"
    .parameter "index"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->containsBuiness(Lcom/didi/frame/business/Business;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/didi/frame/switcher/SwitcherAdapter;->addBuiness(Lcom/didi/frame/business/Business;I)V

    .line 149
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->notifyChanged()V

    goto :goto_0
.end method

.method public addBusiness(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/business/Business;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, businesss:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/business/Business;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/Business;

    .line 130
    .local v0, business:Lcom/didi/frame/business/Business;
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v2, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->containsBuiness(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    .end local v0           #business:Lcom/didi/frame/business/Business;
    :goto_1
    return-void

    .line 133
    .restart local v0       #business:Lcom/didi/frame/business/Business;
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v2, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->addBuiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 135
    .end local v0           #business:Lcom/didi/frame/business/Business;
    :cond_1
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v2}, Lcom/didi/frame/switcher/SwitcherPanel;->notifyChanged()V

    goto :goto_1
.end method

.method public deleteBusiness(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->deleteBuiness(Lcom/didi/frame/business/Business;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->notifyChanged()V

    .line 106
    :cond_0
    return-void
.end method

.method public hasBusines(Lcom/didi/frame/business/Business;)Z
    .locals 1
    .parameter "business"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->containsBuiness(Lcom/didi/frame/business/Business;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 62
    new-instance v0, Lcom/didi/frame/switcher/SwitcherAdapter;

    new-array v1, v2, [Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/switcher/SwitcherAdapter;-><init>([Lcom/didi/frame/business/Business;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    .line 66
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/switcher/SwitcherPanel;->setAdapter(Lcom/didi/frame/switcher/SwitcherAdapter;Z)V

    .line 67
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setSwitcherPanel(Lcom/didi/frame/switcher/SwitcherPanel;)V

    .line 68
    invoke-static {p0}, Lcom/didi/frame/switcher/SwitcherHelper;->setSwitcherView(Lcom/didi/frame/switcher/SwitcherView;)V

    .line 69
    invoke-direct {p0}, Lcom/didi/frame/switcher/SwitcherView;->initialAdjust()V

    .line 70
    invoke-direct {p0}, Lcom/didi/frame/switcher/SwitcherView;->addListener()V

    .line 71
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0300fa

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 195
    iget v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherView;->getHeight()I

    move-result v4

    .line 197
    .local v4, viewHeight:I
    iget v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherViewHeight:I

    sub-int v3, v4, v5

    .line 198
    .local v3, offset:I
    iget v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    .line 200
    .end local v3           #offset:I
    .end local v4           #viewHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherView;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherViewHeight:I

    .line 201
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    .line 202
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 203
    .local v1, measureHeight:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 204
    .local v2, measuredWidth:I
    iget-object v5, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    iget v6, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    iget v7, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    add-int/2addr v7, v1

    invoke-virtual {v5, p2, v6, v2, v7}, Lcom/didi/frame/switcher/SwitcherPanel;->layout(IIII)V

    .line 205
    return-void
.end method

.method public setContentHeight(I)V
    .locals 7
    .parameter "height"

    .prologue
    .line 222
    iget v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v5}, Lcom/didi/frame/switcher/SwitcherPanel;->getTop()I

    move-result v3

    .line 223
    .local v3, top:I
    :goto_0
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherView;->getHeight()I

    move-result v4

    .line 224
    .local v4, viewHeight:I
    const v5, 0x7f090335

    invoke-static {v5}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v5

    float-to-int v2, v5

    .line 225
    .local v2, switcherHeight:I
    sub-int v5, v4, v3

    sub-int v0, v5, v2

    .line 226
    .local v0, contentHeight:I
    sub-int v1, v0, p1

    .line 227
    .local v1, offset:I
    iget-object v5, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/didi/common/util/ViewUtil;->offset(Landroid/view/View;II)V

    .line 228
    add-int v5, v3, v1

    iput v5, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    .line 229
    return-void

    .line 222
    .end local v0           #contentHeight:I
    .end local v1           #offset:I
    .end local v2           #switcherHeight:I
    .end local v3           #top:I
    .end local v4           #viewHeight:I
    :cond_0
    iget v3, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    goto :goto_0
.end method

.method public setContentHeightAnimated(I)V
    .locals 10
    .parameter "height"

    .prologue
    .line 208
    iget v6, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v6}, Lcom/didi/frame/switcher/SwitcherPanel;->getTop()I

    move-result v4

    .line 209
    .local v4, top:I
    :goto_0
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherView;->getHeight()I

    move-result v5

    .line 210
    .local v5, viewHeight:I
    const v6, 0x7f090335

    invoke-static {v6}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v6

    float-to-int v3, v6

    .line 211
    .local v3, switcherHeight:I
    sub-int v6, v5, v4

    sub-int v0, v6, v3

    .line 212
    .local v0, contentHeight:I
    sub-int v2, v0, p1

    .line 213
    .local v2, offset:I
    const-string v6, "SwitcherView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switcherHeiht="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v6, "SwitcherView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentHeiht="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v6, "SwitcherView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    invoke-static {v6, v7, v2, v8, v9}, Lcom/didi/common/util/AnimationUtil;->move(Landroid/view/View;IIJ)Z

    move-result v1

    .line 217
    .local v1, moved:Z
    if-eqz v1, :cond_0

    .line 218
    add-int v6, v4, v2

    iput v6, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    .line 219
    :cond_0
    return-void

    .line 208
    .end local v0           #contentHeight:I
    .end local v1           #moved:Z
    .end local v2           #offset:I
    .end local v3           #switcherHeight:I
    .end local v4           #top:I
    .end local v5           #viewHeight:I
    :cond_1
    iget v4, p0, Lcom/didi/frame/switcher/SwitcherView;->switcherPanelTop:I

    goto :goto_0
.end method
