.class Lcom/facebook/drawee/b/b$2;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/b/b;->a(Ljava/lang/Object;Z)Lcom/facebook/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Lcom/facebook/datasource/b",
        "<TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Z

.field final synthetic d:Lcom/facebook/drawee/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/b/b;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/facebook/drawee/b/b$2;->d:Lcom/facebook/drawee/b/b;

    iput-object p2, p0, Lcom/facebook/drawee/b/b$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/drawee/b/b$2;->b:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/facebook/drawee/b/b$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/drawee/b/b$2;->d:Lcom/facebook/drawee/b/b;

    iget-object v1, p0, Lcom/facebook/drawee/b/b$2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/drawee/b/b$2;->b:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/facebook/drawee/b/b$2;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/drawee/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b$2;->a()Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "request"

    iget-object v2, p0, Lcom/facebook/drawee/b/b$2;->a:Ljava/lang/Object;

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
