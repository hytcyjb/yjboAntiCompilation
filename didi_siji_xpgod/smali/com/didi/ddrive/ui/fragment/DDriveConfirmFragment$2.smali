.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$2;
.super Ljava/lang/Object;
.source "DDriveConfirmFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$2;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 4

    .prologue
    .line 110
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 111
    .local v1, sendable:Lcom/didi/frame/Sendable;
    instance-of v2, v1, Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 112
    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 113
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$2;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    iget-object v3, v0, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    invoke-static {v2, v3}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 120
    .end local v0           #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    .line 121
    return-void

    .line 116
    .restart local v0       #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method
