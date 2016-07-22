.class Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "BtsPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 233
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$200(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    #setter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$102(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)I

    .line 234
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;->this$0:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    #getter for: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$100(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->access$300(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;II)V

    .line 235
    return-void
.end method
