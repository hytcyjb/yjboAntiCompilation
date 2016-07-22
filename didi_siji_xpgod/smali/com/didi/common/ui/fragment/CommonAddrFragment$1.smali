.class Lcom/didi/common/ui/fragment/CommonAddrFragment$1;
.super Ljava/lang/Object;
.source "CommonAddrFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonAddrFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonAddrFragment;->updateAddr()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$000(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V

    .line 154
    return-void
.end method
