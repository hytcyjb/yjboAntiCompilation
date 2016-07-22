.class Lcom/facebook/imagepipeline/producers/n$2;
.super Lcom/facebook/imagepipeline/producers/e;
.source "DiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/n;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/n;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$2;->b:Lcom/facebook/imagepipeline/producers/n;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void
.end method
