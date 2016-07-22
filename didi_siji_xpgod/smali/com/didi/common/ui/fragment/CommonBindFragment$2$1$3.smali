.class Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$3;
.super Ljava/lang/Object;
.source "CommonBindFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->onCancel(Lcn/sharesdk/framework/Platform;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$3;->this$2:Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$3;->this$2:Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonBindFragment;->updateButtonState()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$000(Lcom/didi/common/ui/fragment/CommonBindFragment;)V

    .line 150
    return-void
.end method
