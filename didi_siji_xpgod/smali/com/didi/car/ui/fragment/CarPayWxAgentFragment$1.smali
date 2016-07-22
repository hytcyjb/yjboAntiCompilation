.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$1;
.super Ljava/lang/Object;
.source "CarPayWxAgentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->redirectToWxagentAgreement(Landroid/content/Context;)V

    .line 107
    return-void
.end method
