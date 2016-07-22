.class Lcom/didi/common/util/ImageUtil$1$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/util/ImageUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/util/ImageUtil$1;


# direct methods
.method constructor <init>(Lcom/didi/common/util/ImageUtil$1;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/didi/common/util/ImageUtil$1$1;->this$0:Lcom/didi/common/util/ImageUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/didi/common/util/ImageUtil$1$1;->this$0:Lcom/didi/common/util/ImageUtil$1;

    iget-object v0, v0, Lcom/didi/common/util/ImageUtil$1;->val$listener:Lcom/didi/common/util/ImageUtil$ImageListener;

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/didi/common/util/ImageUtil$1$1;->this$0:Lcom/didi/common/util/ImageUtil$1;

    iget-object v0, v0, Lcom/didi/common/util/ImageUtil$1;->val$listener:Lcom/didi/common/util/ImageUtil$ImageListener;

    iget-object v1, p0, Lcom/didi/common/util/ImageUtil$1$1;->this$0:Lcom/didi/common/util/ImageUtil$1;

    iget-object v1, v1, Lcom/didi/common/util/ImageUtil$1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/didi/common/util/ImageUtil$ImageListener;->onRevise(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
