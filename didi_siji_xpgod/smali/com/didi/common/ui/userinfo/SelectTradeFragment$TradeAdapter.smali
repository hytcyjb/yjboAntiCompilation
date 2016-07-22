.class Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectTradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/SelectTradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TradeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/didi/common/ui/userinfo/UserInfo$Trade;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfo$Trade;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/userinfo/UserInfo$Trade;>;"
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    .line 165
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 174
    const v1, 0x7f0801b3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 175
    .local v0, checkedView:Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #getter for: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mCurrentTrade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$500(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 180
    :goto_0
    return-object p2

    .line 178
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
