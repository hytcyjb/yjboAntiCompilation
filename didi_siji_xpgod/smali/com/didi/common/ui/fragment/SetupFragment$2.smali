.class Lcom/didi/common/ui/fragment/SetupFragment$2;
.super Lcom/didi/common/net/ResponseListener;
.source "SetupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/SetupFragment;->getShowContentFromNet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/UserProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SetupFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$2;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    check-cast p1, Lcom/didi/common/model/UserProperty;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/SetupFragment$2;->onSuccess(Lcom/didi/common/model/UserProperty;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/UserProperty;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 213
    iget v0, p1, Lcom/didi/common/model/UserProperty;->isVip:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$2;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->layoutRefund:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$300(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$2;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->lineCarRefund:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$400(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$2;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->layoutRefund:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$300(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment$2;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/SetupFragment;->access$200(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_0
    return-void
.end method
