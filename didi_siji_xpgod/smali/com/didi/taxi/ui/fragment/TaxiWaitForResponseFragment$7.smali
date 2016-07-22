.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$7;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 258
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    const/4 v1, 0x2

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doChangeTip(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1300(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    .line 263
    return-void
.end method
