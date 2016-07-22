.class Lcom/didi/frame/MapFragment$6;
.super Lcom/didi/common/net/ResponseListener;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment;->updateAddressList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/MessageHasNew;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/didi/frame/MapFragment$6;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 495
    check-cast p1, Lcom/didi/common/model/MessageHasNew;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$6;->onSuccess(Lcom/didi/common/model/MessageHasNew;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/MessageHasNew;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 500
    :try_start_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    iget v0, p1, Lcom/didi/common/model/MessageHasNew;->newmsg:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/didi/common/config/Preferences;->setMessageHasNew(Z)V

    .line 501
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isCarRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isFlierRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_1
    :goto_1
    return-void

    .line 500
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    goto :goto_1
.end method
