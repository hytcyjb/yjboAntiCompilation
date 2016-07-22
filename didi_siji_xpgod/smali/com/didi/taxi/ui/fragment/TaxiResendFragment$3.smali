.class Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;
.super Ljava/lang/Object;
.source "TaxiResendFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->showRecommandDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

.field final synthetic val$dialog:Lcom/didi/common/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;Lcom/didi/common/helper/DialogHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    iput-object p2, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;->val$dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;->val$dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 154
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;->val$dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setBottomStyle(I)V

    .line 138
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 139
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
