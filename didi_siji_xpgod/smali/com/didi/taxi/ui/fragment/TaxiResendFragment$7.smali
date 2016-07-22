.class Lcom/didi/taxi/ui/fragment/TaxiResendFragment$7;
.super Ljava/lang/Object;
.source "TaxiResendFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public firstClick()V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchToByBusiness(Lcom/didi/frame/business/Business;)V

    .line 254
    return-void
.end method

.method public secondClick()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->doCancel()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->access$300(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    .line 259
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method
