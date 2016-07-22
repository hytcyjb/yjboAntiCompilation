.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$18;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
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
    .line 927
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$18;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$18;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doCancel(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    .line 937
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 949
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 941
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 953
    return-void
.end method
