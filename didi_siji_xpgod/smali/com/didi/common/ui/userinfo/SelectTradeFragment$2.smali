.class Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;
.super Lcom/didi/common/net/ResponseListener;
.source "SelectTradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/SelectTradeFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/ui/userinfo/TradeList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Lcom/didi/common/ui/userinfo/TradeList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->onFail(Lcom/didi/common/ui/userinfo/TradeList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/ui/userinfo/TradeList;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/common/ui/userinfo/TradeList;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/ui/userinfo/TradeList;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Lcom/didi/common/ui/userinfo/TradeList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->onFinish(Lcom/didi/common/ui/userinfo/TradeList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/ui/userinfo/TradeList;)V
    .locals 7
    .parameter "tradeList"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 106
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #setter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;
    invoke-static {v0, p1}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$002(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Lcom/didi/common/ui/userinfo/TradeList;)Lcom/didi/common/ui/userinfo/TradeList;

    .line 107
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    new-instance v0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030049

    const v4, 0x7f0801b3

    iget-object v5, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;
    invoke-static {v5}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$000(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Lcom/didi/common/ui/userinfo/TradeList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/ui/userinfo/TradeList;->getTradeList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;-><init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Landroid/content/Context;IILjava/util/List;)V

    #setter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v6, v0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$202(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 111
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBusinessList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$300(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$200(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
