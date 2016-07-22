.class Lcom/facebook/imagepipeline/producers/ak$a$1;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ak$a;-><init>(Lcom/facebook/imagepipeline/producers/ak;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/ak;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/ak$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/ak$a;Lcom/facebook/imagepipeline/producers/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ak$a$1;->b:Lcom/facebook/imagepipeline/producers/ak$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ak$a$1;->a:Lcom/facebook/imagepipeline/producers/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/f/e;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ak$a$1;->b:Lcom/facebook/imagepipeline/producers/ak$a;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ak$a;->a(Lcom/facebook/imagepipeline/producers/ak$a;Lcom/facebook/imagepipeline/f/e;Z)V

    .line 90
    return-void
.end method
