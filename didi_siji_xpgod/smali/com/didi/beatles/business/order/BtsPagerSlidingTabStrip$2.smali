.class Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "BtsPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iput p2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 285
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->val$position:I

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v1}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 286
    const-string v0, "pbdxmgrorder05_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    const-string v0, "pbdxwhorder08_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$200(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 296
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->mTabFastDoubleClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$400(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->mTabFastDoubleClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$400(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;->onFastDoubleClick(I)V

    .line 301
    :cond_1
    return-void

    .line 288
    :cond_2
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->val$position:I

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v1}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 289
    const-string v0, "pbdxmgrorder03_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    const-string v0, "pbdxmgrorder06_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_3
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;->val$position:I

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v1}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 292
    const-string v0, "pbdxmgrorder04_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 293
    const-string v0, "pbdxmgrorder08_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
