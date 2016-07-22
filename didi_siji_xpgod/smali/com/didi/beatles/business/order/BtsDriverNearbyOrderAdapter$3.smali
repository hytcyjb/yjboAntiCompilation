.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 243
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->route_id:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
