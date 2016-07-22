.class Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$4;
.super Ljava/lang/Object;
.source "BtsDriverMatchFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 261
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->route_id:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
