.class Lcom/didi/common/ui/fragment/CommonAddrFragment$2;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonAddrFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonAddrFragment;->updateAddr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/AddressList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonAddrFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$100(Lcom/didi/common/ui/fragment/CommonAddrFragment;Lcom/didi/common/model/AddressList;)V

    .line 186
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonAddrFragment$2;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 180
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonAddrFragment$2;->onSuccess(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
