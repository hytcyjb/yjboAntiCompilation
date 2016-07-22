.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$8;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$8;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 557
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-eqz v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$8;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setFirstUse()V
    invoke-static {v3}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    if-nez v3, :cond_3

    const-string v2, ""

    .line 567
    .local v2, url:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glClick="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 568
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 572
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 573
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    const-class v4, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 575
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$8;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v3}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 566
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #model:Lcom/didi/common/ui/webview/WebViewModel;
    .end local v2           #url:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget-object v2, v3, Lcom/didi/beatles/model/BtsConfig$Didialift;->url:Ljava/lang/String;

    goto :goto_1
.end method
