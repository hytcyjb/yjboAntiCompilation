.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;
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
    .line 161
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 165
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mNetErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$600(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$700(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V

    .line 173
    :cond_0
    return-void
.end method
