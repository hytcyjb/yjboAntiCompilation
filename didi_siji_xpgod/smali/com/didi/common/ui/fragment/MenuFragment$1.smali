.class Lcom/didi/common/ui/fragment/MenuFragment$1;
.super Lcom/didi/common/net/ResponseListener;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->getMenuCommonBizConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonBizConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$1;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, Lcom/didi/common/model/CommonBizConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$1;->onError(Lcom/didi/common/model/CommonBizConfig;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonBizConfig;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$1;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->reloadMenuCommonBizConfig()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$100(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 180
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, Lcom/didi/common/model/CommonBizConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$1;->onFail(Lcom/didi/common/model/CommonBizConfig;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonBizConfig;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$1;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->reloadMenuCommonBizConfig()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$100(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 187
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, Lcom/didi/common/model/CommonBizConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$1;->onFinish(Lcom/didi/common/model/CommonBizConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonBizConfig;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$1;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->setFoundMenuLayout()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$200(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 192
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, Lcom/didi/common/model/CommonBizConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$1;->onSuccess(Lcom/didi/common/model/CommonBizConfig;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonBizConfig;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$1;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->saveMenuCommonBizConfig(Lcom/didi/common/model/CommonBizConfig;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/MenuFragment;->access$000(Lcom/didi/common/ui/fragment/MenuFragment;Lcom/didi/common/model/CommonBizConfig;)V

    .line 173
    return-void
.end method
