.class Lcom/didi/common/util/LocUtil$2;
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
    .line 171
    iput-object p1, p0, Lcom/didi/common/util/LocUtil$2;->this$0:Lcom/didi/common/util/LocUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "permission_locate_instruct_error_cancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/didi/common/util/LocUtil$2;->this$0:Lcom/didi/common/util/LocUtil;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/util/LocUtil;->isPemShown:Z
    invoke-static {v0, v1}, Lcom/didi/common/util/LocUtil;->access$102(Lcom/didi/common/util/LocUtil;Z)Z

    .line 210
    iget-object v0, p0, Lcom/didi/common/util/LocUtil$2;->this$0:Lcom/didi/common/util/LocUtil;

    invoke-virtual {v0}, Lcom/didi/common/util/LocUtil;->checkGpsStatus()V

    .line 211
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public submit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    const-string v2, "permission_locate_instruct_error_submit"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/didi/common/util/LocUtil$2;->this$0:Lcom/didi/common/util/LocUtil;

    const/4 v3, 0x1

    #setter for: Lcom/didi/common/util/LocUtil;->isPemShown:Z
    invoke-static {v2, v3}, Lcom/didi/common/util/LocUtil;->access$102(Lcom/didi/common/util/LocUtil;Z)Z

    .line 187
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 190
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 191
    const v2, 0x7f0b03e3

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 192
    const-string v2, "http://pay.xiaojukeji.com/share/didi_guide.html"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 195
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
