.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    const/4 v1, 0x1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)V

    .line 590
    :cond_0
    return-void
.end method
