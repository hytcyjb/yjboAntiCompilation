.class Lcom/didi/common/ui/component/FlipperView$3;
.super Ljava/lang/Object;
.source "FlipperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/FlipperView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/FlipperView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/FlipperView;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/didi/common/ui/component/FlipperView$3;->this$0:Lcom/didi/common/ui/component/FlipperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/didi/common/ui/component/FlipperView$3;->this$0:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/FlipperView;->invalidate()V

    .line 202
    return-void
.end method
