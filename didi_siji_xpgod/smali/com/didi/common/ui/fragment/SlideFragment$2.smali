.class Lcom/didi/common/ui/fragment/SlideFragment$2;
.super Ljava/lang/Object;
.source "SlideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SlideFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SlideFragment$2;->this$0:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/didi/async/task/CommonAsyncTask;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SlideFragment$2;->this$0:Lcom/didi/common/ui/fragment/SlideFragment;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/SlideFragment;->asyncListener:Lcom/didi/async/task/AsyncListenrInter;

    invoke-direct {v0, v1}, Lcom/didi/async/task/CommonAsyncTask;-><init>(Lcom/didi/async/task/AsyncListenrInter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/didi/async/task/CommonAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method
