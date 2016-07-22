.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$2;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Lcom/didi/common/listener/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "oldPhone"
    .parameter "newPhone"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isDestory:Z
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->updateHistoryOrderList()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    goto :goto_0
.end method

.method public onRedPoint(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 259
    return-void
.end method
