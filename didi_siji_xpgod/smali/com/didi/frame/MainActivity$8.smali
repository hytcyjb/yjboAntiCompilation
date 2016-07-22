.class Lcom/didi/frame/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->parseCommonMarketingIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/didi/frame/MainActivity$8;->this$0:Lcom/didi/frame/MainActivity;

    iput-object p2, p0, Lcom/didi/frame/MainActivity$8;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 729
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->isHomeShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/MainActivity$8;->val$bundle:Landroid/os/Bundle;

    const-string v2, "business"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 733
    .local v0, business:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 735
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 738
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 741
    :pswitch_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 746
    :pswitch_3
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 751
    :pswitch_4
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 756
    :pswitch_5
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 761
    :pswitch_6
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v1, v2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
