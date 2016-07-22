.class Lcom/didi/common/util/LocUtil$3;
.super Ljava/lang/Object;
.source "LocUtil.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/util/LocUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/util/LocUtil;


# direct methods
.method constructor <init>(Lcom/didi/common/util/LocUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/didi/common/util/LocUtil$3;->this$0:Lcom/didi/common/util/LocUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/common/util/LocUtil$3;->this$0:Lcom/didi/common/util/LocUtil;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/util/LocUtil;->isNetShown:Z
    invoke-static {v0, v1}, Lcom/didi/common/util/LocUtil;->access$202(Lcom/didi/common/util/LocUtil;Z)Z

    .line 250
    const-string v0, "permission_locate_net_error_cancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/didi/common/util/LocUtil$3;->this$0:Lcom/didi/common/util/LocUtil;

    #getter for: Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/common/util/LocUtil;->access$000(Lcom/didi/common/util/LocUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    const-string v1, "permission_locate_net_error_submit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
