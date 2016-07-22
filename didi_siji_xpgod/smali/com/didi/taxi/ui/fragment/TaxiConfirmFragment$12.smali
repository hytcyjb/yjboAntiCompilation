.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$12;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showIllegalAddressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$12;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 609
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method
