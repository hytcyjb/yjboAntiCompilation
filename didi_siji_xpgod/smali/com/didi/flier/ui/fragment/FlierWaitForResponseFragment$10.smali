.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->openBar(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->open()V

    .line 360
    :cond_0
    return-void
.end method
