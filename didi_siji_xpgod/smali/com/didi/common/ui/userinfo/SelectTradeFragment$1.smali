.class Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;
.super Ljava/lang/Object;
.source "SelectTradeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/SelectTradeFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$000(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Lcom/didi/common/ui/userinfo/TradeList;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/didi/common/ui/userinfo/TradeList;->get(I)Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    move-result-object v1

    .line 91
    .local v1, selectedTrade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, data:Landroid/content/Intent;
    const-string v2, "trade"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$100(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$100(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 95
    return-void
.end method
