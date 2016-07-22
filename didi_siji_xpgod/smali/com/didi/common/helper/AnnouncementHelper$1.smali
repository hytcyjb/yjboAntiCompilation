.class final Lcom/didi/common/helper/AnnouncementHelper$1;
.super Ljava/lang/Object;
.source "AnnouncementHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/AnnouncementHelper;->setTitleBar(Landroid/view/View;Lcom/didi/frame/business/Business;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$business:Lcom/didi/frame/business/Business;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$contentView:Landroid/view/View;

    iput-object p2, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 269
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$contentView:Landroid/view/View;

    iget-object v3, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/common/helper/PopupHelper;->showPopupWindow(Landroid/content/Context;Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    .line 271
    iget-object v0, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$business:Lcom/didi/frame/business/Business;

    const v2, 0x7f0202fc

    #calls: Lcom/didi/common/helper/AnnouncementHelper;->setTitleBar(Landroid/view/View;Lcom/didi/frame/business/Business;I)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/AnnouncementHelper;->access$000(Landroid/view/View;Lcom/didi/frame/business/Business;I)V

    .line 272
    iget-object v0, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$business:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 273
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/didi/common/config/Preferences;->setTaxiHasAutoPopAnnouncement(Z)V

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$business:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 275
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/didi/common/config/Preferences;->setCarHasAutoPopAnnouncement(Z)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/didi/common/helper/AnnouncementHelper$1;->val$business:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 277
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/didi/common/config/Preferences;->setDDriveHasAutoPopAnnouncement(Z)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/didi/common/config/Preferences;->setFlierHasAutoPopAnnouncement(Z)V

    goto :goto_0
.end method
