.class Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;
.super Lcom/didi/common/net/ResponseListener;
.source "ActivityRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->redirectToActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/RecoveryConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;->onError(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 308
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;->onFail(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 303
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;->onFinish(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 291
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 293
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    #calls: Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->access$200(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;Lcom/didi/common/model/RecoveryConfig;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;->onSuccess(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 313
    return-void
.end method
