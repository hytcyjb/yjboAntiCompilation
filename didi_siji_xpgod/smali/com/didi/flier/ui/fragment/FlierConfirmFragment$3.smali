.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$3;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    .line 222
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->confirmSendOrder()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    .line 224
    :cond_0
    return-void
.end method
