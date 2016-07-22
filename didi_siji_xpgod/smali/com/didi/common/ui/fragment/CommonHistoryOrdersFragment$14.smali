.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doHistoryOrderItemsDelete(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doHistoryOrderItemsDelete(Ljava/lang/Runnable;)V

    .line 1315
    return-void
.end method
