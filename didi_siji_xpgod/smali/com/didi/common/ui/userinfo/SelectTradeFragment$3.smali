.class Lcom/didi/common/ui/userinfo/SelectTradeFragment$3;
.super Ljava/lang/Object;
.source "SelectTradeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/SelectTradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$3;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$3;->this$0:Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    #calls: Lcom/didi/common/ui/userinfo/SelectTradeFragment;->cancel()V
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->access$400(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V

    .line 140
    return-void
.end method
