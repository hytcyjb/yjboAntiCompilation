.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->striveOrderEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
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
    .line 118
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v2, "pbdxmgrorder01_ck"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    const-string v2, "pbdxmgrorder09_ck"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v0

    .line 130
    .local v0, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v2

    iget-boolean v2, v2, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->base_state:Z

    if-nez v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/beatles/helper/BtsPermissionUtils;->checkAndShowLocationPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 137
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->route_id:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
