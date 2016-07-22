.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$4;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/frame/price/PriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPriceChange(II)V
    .locals 1
    .parameter "lastPrice"
    .parameter "newPrice"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onOrderModified()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    .line 194
    return-void
.end method
