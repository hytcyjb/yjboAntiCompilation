.class Lcom/didi/taxi/ui/fragment/TaxiResendFragment$1;
.super Ljava/lang/Object;
.source "TaxiResendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->setSwitcher()V
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
    .line 73
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->recallOrder()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    .line 78
    return-void
.end method
