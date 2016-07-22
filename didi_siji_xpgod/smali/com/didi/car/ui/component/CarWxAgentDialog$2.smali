.class Lcom/didi/car/ui/component/CarWxAgentDialog$2;
.super Ljava/lang/Object;
.source "CarWxAgentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarWxAgentDialog;
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
    .line 63
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$2;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$2;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->dismiss()V

    .line 68
    return-void
.end method
