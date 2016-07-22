.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setBarListener()V
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
    .line 338
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    const/4 v1, 0x1

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)V

    .line 343
    :cond_0
    return-void
.end method
