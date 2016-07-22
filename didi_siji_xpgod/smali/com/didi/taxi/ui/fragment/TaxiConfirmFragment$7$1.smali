.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7$1;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkOrderAndSendOrder()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$800(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    .line 370
    return-void
.end method
