.class Lcom/didi/car/ui/fragment/CarConfirmFragment$6;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->openBar(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->open()V

    .line 324
    :cond_0
    return-void
.end method
