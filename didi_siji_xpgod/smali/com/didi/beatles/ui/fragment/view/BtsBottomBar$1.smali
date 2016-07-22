.class Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$1;
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
    .line 149
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$1;->this$0:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 153
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$1;->this$0:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    #getter for: Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->mlistener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->access$000(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$1;->this$0:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    #getter for: Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->mlistener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->access$000(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;->onBookClick()V

    .line 157
    :cond_1
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v0

    .line 158
    .local v0, role:I
    if-nez v0, :cond_2

    .line 159
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    const-class v4, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->isHasRoute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    sget-object v2, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v1, v2}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/business/order/BtsTabIndex;)V

    goto :goto_0

    .line 169
    :cond_4
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    sget-object v2, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v1, v2}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/business/order/BtsTabIndex;)V

    goto :goto_0
.end method
