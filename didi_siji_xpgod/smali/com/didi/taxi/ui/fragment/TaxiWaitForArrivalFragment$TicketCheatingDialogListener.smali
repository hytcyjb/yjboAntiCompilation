.class final Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TicketCheatingDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method private constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3220
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3220
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3225
    return-void
.end method
