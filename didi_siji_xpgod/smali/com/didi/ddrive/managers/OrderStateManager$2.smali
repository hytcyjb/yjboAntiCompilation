.class Lcom/didi/ddrive/managers/OrderStateManager$2;
.super Ljava/lang/Object;
.source "OrderStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderStateManager;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$notify:Z

.field final synthetic val$state:Lcom/didi/ddrive/model/OrderState;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderStateManager;Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->val$state:Lcom/didi/ddrive/model/OrderState;

    iput-object p3, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->val$event:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->val$notify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->val$state:Lcom/didi/ddrive/model/OrderState;

    iget-object v2, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->val$event:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/didi/ddrive/managers/OrderStateManager$2;->val$notify:Z

    #calls: Lcom/didi/ddrive/managers/OrderStateManager;->post(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/ddrive/managers/OrderStateManager;->access$000(Lcom/didi/ddrive/managers/OrderStateManager;Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V

    .line 163
    return-void
.end method
