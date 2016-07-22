.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->bindUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 142
    .local v0, action:I
    if-nez v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    #setter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLastListViewY:F
    invoke-static {v1, v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$502(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;F)F

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$200(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLastListViewY:F
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$500(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    const/4 v2, 0x3

    #calls: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V
    invoke-static {v1, v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V

    goto :goto_0
.end method
