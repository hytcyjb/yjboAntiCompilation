.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;

.field final synthetic val$mTrip_type:I


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;

    iput p2, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;->val$mTrip_type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;

    iget-boolean v0, v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->isAutoSend:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showCarPoolFirstGuide()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    .line 174
    :cond_0
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;->val$mTrip_type:I

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 175
    return-void
.end method
