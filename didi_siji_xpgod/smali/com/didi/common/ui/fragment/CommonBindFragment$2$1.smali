.class Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;
.super Ljava/lang/Object;
.source "CommonBindFragment.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonBindFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$3;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p3, arg2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$2;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$1;

    invoke-direct {v1, p0, p3}, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$1;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
