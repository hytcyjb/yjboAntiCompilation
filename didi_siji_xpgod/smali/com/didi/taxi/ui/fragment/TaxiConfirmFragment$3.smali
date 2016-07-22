.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$3;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showRecommandDialog()V
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
    .line 207
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 239
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setBottomStyle(I)V

    .line 223
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 224
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
