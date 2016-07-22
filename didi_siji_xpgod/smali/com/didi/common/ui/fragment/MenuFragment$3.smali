.class Lcom/didi/common/ui/fragment/MenuFragment$3;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->reloadGameConfing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$3;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$3;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfig()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$400(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 234
    return-void
.end method
