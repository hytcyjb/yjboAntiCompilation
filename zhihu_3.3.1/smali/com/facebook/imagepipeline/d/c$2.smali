.class Lcom/facebook/imagepipeline/d/c$2;
.super Ljava/lang/Object;
.source "ImagePipeline.java"

# interfaces
.implements Lbolts/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/d/c;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/c",
        "<",
        "Ljava/lang/Boolean;",
        "Lbolts/d",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/a;

.field final synthetic b:Lcom/facebook/imagepipeline/d/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/d/c;Lcom/facebook/cache/common/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/c$2;->b:Lcom/facebook/imagepipeline/d/c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/d/c$2;->a:Lcom/facebook/cache/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/d/c$2;->b(Lbolts/d;)Lbolts/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/d;)Lbolts/d;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p1}, Lbolts/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Object;)Lbolts/d;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c$2;->b:Lcom/facebook/imagepipeline/d/c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/d/c;->a(Lcom/facebook/imagepipeline/d/c;)Lcom/facebook/imagepipeline/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/c$2;->a:Lcom/facebook/cache/common/a;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;)Lbolts/d;

    move-result-object v0

    goto :goto_0
.end method
