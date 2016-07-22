.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;
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
    .line 191
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 194
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
