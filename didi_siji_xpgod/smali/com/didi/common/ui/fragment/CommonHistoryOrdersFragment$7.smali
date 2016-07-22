.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$7;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadUnReadFromDB(Ljava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$7;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$7;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$7;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->notifyDataSetChanged()V

    .line 864
    :cond_0
    return-void
.end method
