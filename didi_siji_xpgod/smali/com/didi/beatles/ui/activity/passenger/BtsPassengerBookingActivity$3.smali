.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$3;
.super Ljava/lang/Object;
.source "BtsPassengerBookingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 198
    .local v1, webViewMode:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b0363

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 199
    const-string v2, "http://static.xiaojukeji.com/didialift/hybrid/pages/help/help-homePage.html"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 200
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 201
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-virtual {v2, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
