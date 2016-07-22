.class Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;
.super Ljava/lang/Object;
.source "BtsDriverOrderManagerActivity.java"

# interfaces
.implements Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectCurrentTab(I)V

    .line 234
    return-void
.end method

.method public onRedirectToWeb(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 238
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 239
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object p1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 240
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-virtual {v2, v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
