.class Lcom/didi/taxi/ui/component/ShareView$3$1;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/ShareView$3;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/ShareView$3;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/ShareView$3;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView$3$1;->this$1:Lcom/didi/taxi/ui/component/ShareView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 491
    const v0, 0x7f0b04fc

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 492
    return-void
.end method
