.class Lcom/facebook/imagepipeline/d/c$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/g;

.field final synthetic b:Lcom/facebook/imagepipeline/d/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/d/c;Lcom/facebook/datasource/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/c$1;->b:Lcom/facebook/imagepipeline/d/c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/d/c$1;->a:Lcom/facebook/datasource/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/d/c$1;->b(Lbolts/d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/d;)Ljava/lang/Void;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/c$1;->a:Lcom/facebook/datasource/g;

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

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/datasource/g;->b(Ljava/lang/Object;)Z

    .line 469
    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
