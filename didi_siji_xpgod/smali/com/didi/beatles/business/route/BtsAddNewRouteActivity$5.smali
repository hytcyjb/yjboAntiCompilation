.class Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;
.super Ljava/lang/Object;
.source "BtsAddNewRouteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 294
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;
    invoke-static {v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$500(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 297
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    const v3, 0x7f0b009d

    invoke-virtual {v2, v3}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v7, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 300
    const-string v1, "%02d:%02d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_hour:I
    invoke-static {v3}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$300(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_minute:I
    invoke-static {v3}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$400(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, endTime:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->isHasRoute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v0, ""

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mStartAddress:Lcom/didi/common/model/Address;
    invoke-static {v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$600(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Lcom/didi/common/model/Address;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mEndAddress:Lcom/didi/common/model/Address;
    invoke-static {v2}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$700(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Lcom/didi/common/model/Address;

    move-result-object v2

    const-string v3, "%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I
    invoke-static {v5}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$100(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I
    invoke-static {v5}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$200(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5$1;

    invoke-direct {v4, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5$1;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;)V

    invoke-static {v1, v2, v3, v0, v4}, Lcom/didi/beatles/net/BtsRequest;->addRoute(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 327
    .end local v0           #endTime:Ljava/lang/String;
    :cond_1
    return-void
.end method
