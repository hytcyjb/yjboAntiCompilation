.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;
.super Ljava/lang/Object;
.source "TaxiEndOrderActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    const/4 v1, 0x1

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submit(Z)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$300(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Z)V

    .line 464
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public submit()V
    .locals 8

    .prologue
    .line 443
    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v4}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/taxi/model/TaxiDriver;->phone:Ljava/lang/String;

    .line 444
    .local v2, phone:Ljava/lang/String;
    sget-object v4, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v4}, Lcom/didi/common/model/CommonVirtualMobile;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v4}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/taxi/model/TaxiDriver;->virtualmobileExpired:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v4}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/taxi/model/TaxiDriver;->virtualMobile:Ljava/lang/String;

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DriverPhone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v5}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/taxi/model/TaxiDriver;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VirtualPhone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 448
    :cond_0
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v4}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/taxi/model/TaxiDriver;->phone:Ljava/lang/String;

    .line 452
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 453
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 455
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-virtual {v4, v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method
