.class public Lcom/facebook/imagepipeline/producers/ao;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/ap;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ao;->a:Lcom/facebook/imagepipeline/producers/ag;

    .line 31
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ao;->b:Lcom/facebook/imagepipeline/producers/ap;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ao;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ao;->a:Lcom/facebook/imagepipeline/producers/ag;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/ao;)Lcom/facebook/imagepipeline/producers/ap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ao;->b:Lcom/facebook/imagepipeline/producers/ap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v3

    .line 37
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v5

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/producers/ao$1;

    const-string v4, "BackgroundThreadHandoffProducer"

    move-object v1, p0

    move-object v2, p1

    move-object v6, v3

    move-object v7, v5

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/producers/ao$1;-><init>(Lcom/facebook/imagepipeline/producers/ao;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 57
    new-instance v1, Lcom/facebook/imagepipeline/producers/ao$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/producers/ao$2;-><init>(Lcom/facebook/imagepipeline/producers/ao;Lcom/facebook/imagepipeline/producers/am;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/producers/ah;->a(Lcom/facebook/imagepipeline/producers/ai;)V

    .line 65
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ao;->b:Lcom/facebook/imagepipeline/producers/ap;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/producers/ap;->a(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
