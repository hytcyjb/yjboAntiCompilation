.class Lcom/didi/taxi/ui/component/ShareView$3$2$2;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/ShareView$3$2;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/didi/taxi/ui/component/ShareView$3$2;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/ShareView$3$2;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView$3$2$2;->this$2:Lcom/didi/taxi/ui/component/ShareView$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 523
    const v0, 0x7f0b0504

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 524
    return-void
.end method
