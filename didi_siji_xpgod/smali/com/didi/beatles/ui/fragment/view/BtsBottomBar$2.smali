.class Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$2;
.super Ljava/lang/Object;
.source "BtsBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$2;->this$0:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 189
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/BtsConfig$Button;

    .line 192
    .local v0, con:Lcom/didi/beatles/model/BtsConfig$Button;
    if-eqz v0, :cond_0

    .line 195
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 196
    .local v2, model:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v3, v0, Lcom/didi/beatles/model/BtsConfig$Button;->url:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 197
    iget-object v3, v0, Lcom/didi/beatles/model/BtsConfig$Button;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 198
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    const-class v4, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
