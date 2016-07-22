.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$15;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->redictRealtimeFragment()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V

    .line 640
    return-void
.end method
