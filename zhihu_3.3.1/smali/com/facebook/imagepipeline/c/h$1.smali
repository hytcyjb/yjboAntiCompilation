.class Lcom/facebook/imagepipeline/c/h$1;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/c/h;->a(Lcom/facebook/imagepipeline/c/v;)Lcom/facebook/imagepipeline/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/v",
        "<",
        "Lcom/facebook/imagepipeline/c/h$b",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/c/v;

.field final synthetic b:Lcom/facebook/imagepipeline/c/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/h$1;->b:Lcom/facebook/imagepipeline/c/h;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/h$1;->a:Lcom/facebook/imagepipeline/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/c/h$b;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h$1;->a:Lcom/facebook/imagepipeline/c/v;

    iget-object v1, p1, Lcom/facebook/imagepipeline/c/h$b;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/c/v;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    check-cast p1, Lcom/facebook/imagepipeline/c/h$b;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/h$1;->a(Lcom/facebook/imagepipeline/c/h$b;)I

    move-result v0

    return v0
.end method
