.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4$1;
.super Ljava/lang/Object;
.source "DDriveRealtimeFragment.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->onMapStable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/DriveAroundResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4$1;->this$1:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 243
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveAroundResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 232
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 233
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4$1;->this$1:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;

    iget-object v0, v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->access$200(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDDriveDriverMarkerList()V

    .line 237
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriveAroundResponse;->drivers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setDDriveDriverMarkerList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriveAroundResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveAroundResponse;)V

    return-void
.end method
