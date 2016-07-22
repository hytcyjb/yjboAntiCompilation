.class Lcom/didi/common/ui/fragment/CommonLoginFragment$19;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;->onLogin(Lcom/didi/common/model/CommonToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isBack:Z
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->updateAddr()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3500(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 889
    :cond_0
    return-void
.end method
