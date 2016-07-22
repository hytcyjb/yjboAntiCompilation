.class Lcom/didi/car/ui/component/CarWxAgentDialog$1;
.super Ljava/lang/Object;
.source "CarWxAgentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWxAgentDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->redirectToWxagentAgreement(Landroid/content/Context;)V

    .line 54
    return-void
.end method
