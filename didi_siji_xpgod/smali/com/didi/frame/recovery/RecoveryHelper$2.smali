.class Lcom/didi/frame/recovery/RecoveryHelper$2;
.super Ljava/lang/Object;
.source "RecoveryHelper.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryHelper;->getDialogListener(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryHelper;

.field final synthetic val$config:Lcom/didi/common/model/RecoveryConfig;

.field final synthetic val$recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryHelper;Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;

    iput-object p3, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/frame/recovery/RecoveryHelper;->access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper;->disMissPopupWindow()V

    .line 149
    invoke-static {}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->disMissGuide()V

    .line 150
    const-string v0, "order_recover_waitincar_cancel_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/frame/recovery/RecoveryHelper;->access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper;->disMissPopupWindow()V

    .line 138
    invoke-static {}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->disMissGuide()V

    .line 139
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/frame/recovery/RecoveryHelper;->access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryBusiness;->recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V

    .line 140
    const-string v0, "order_recover_waitincar_confirm_click"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    iget-object v1, v1, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 142
    const-string v0, "pdjxhome_06_ck"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public submitOnly()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/frame/recovery/RecoveryHelper;->access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper;->disMissPopupWindow()V

    .line 126
    invoke-static {}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->disMissGuide()V

    .line 127
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/frame/recovery/RecoveryHelper;->access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryBusiness;->recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V

    .line 128
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper$2;->val$config:Lcom/didi/common/model/RecoveryConfig;

    iget-object v1, v1, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 129
    const-string v0, "pdjxhome_06_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    goto :goto_0
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method
