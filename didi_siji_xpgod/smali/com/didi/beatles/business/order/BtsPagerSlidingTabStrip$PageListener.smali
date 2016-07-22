.class Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "BtsPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;-><init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$200(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$300(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;II)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 434
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #setter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, p1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$102(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)I

    .line 414
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #setter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, p2}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$502(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;F)F

    .line 416
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$600(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    #calls: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$300(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;II)V

    .line 418
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 420
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 423
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #setter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedPosition:I
    invoke-static {v0, p1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$702(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)I

    .line 439
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #calls: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$800(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)V

    .line 440
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 443
    :cond_0
    return-void
.end method
