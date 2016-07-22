.class Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;
.super Ljava/lang/Object;
.source "BtsConponSelectWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .parameter "jsonObject"

    .prologue
    const v5, 0x7f0b002f

    .line 34
    sget-object v2, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectCouponSuccess, execute, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string v2, "\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 47
    :goto_0
    return-object v2

    .line 37
    :cond_0
    const-string v2, "d_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, dId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "couponId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 42
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->finish()V

    .line 47
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;

    invoke-virtual {v3, v5}, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;

    invoke-virtual {v3, v5}, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V

    goto :goto_1
.end method
