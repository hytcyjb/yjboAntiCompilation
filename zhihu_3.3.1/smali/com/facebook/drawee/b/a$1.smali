.class Lcom/facebook/drawee/b/a$1;
.super Lcom/facebook/datasource/a;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/b/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/drawee/b/a;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/b/a;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/facebook/drawee/b/a$1;->c:Lcom/facebook/drawee/b/a;

    iput-object p2, p0, Lcom/facebook/drawee/b/a$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/drawee/b/a$1;->b:Z

    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/datasource/b;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-interface {p1}, Lcom/facebook/datasource/b;->b()Z

    move-result v0

    .line 432
    invoke-interface {p1}, Lcom/facebook/datasource/b;->g()F

    move-result v1

    .line 433
    iget-object v2, p0, Lcom/facebook/drawee/b/a$1;->c:Lcom/facebook/drawee/b/a;

    iget-object v3, p0, Lcom/facebook/drawee/b/a$1;->a:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1, v0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/a;Ljava/lang/String;Lcom/facebook/datasource/b;FZ)V

    .line 434
    return-void
.end method

.method public e(Lcom/facebook/datasource/b;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    invoke-interface {p1}, Lcom/facebook/datasource/b;->b()Z

    move-result v5

    .line 417
    invoke-interface {p1}, Lcom/facebook/datasource/b;->g()F

    move-result v4

    .line 418
    invoke-interface {p1}, Lcom/facebook/datasource/b;->d()Ljava/lang/Object;

    move-result-object v3

    .line 419
    if-eqz v3, :cond_1

    .line 420
    iget-object v0, p0, Lcom/facebook/drawee/b/a$1;->c:Lcom/facebook/drawee/b/a;

    iget-object v1, p0, Lcom/facebook/drawee/b/a$1;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/facebook/drawee/b/a$1;->b:Z

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/a;Ljava/lang/String;Lcom/facebook/datasource/b;Ljava/lang/Object;FZZ)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    if-eqz v5, :cond_0

    .line 422
    iget-object v0, p0, Lcom/facebook/drawee/b/a$1;->c:Lcom/facebook/drawee/b/a;

    iget-object v1, p0, Lcom/facebook/drawee/b/a$1;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/a;Ljava/lang/String;Lcom/facebook/datasource/b;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public f(Lcom/facebook/datasource/b;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/facebook/drawee/b/a$1;->c:Lcom/facebook/drawee/b/a;

    iget-object v1, p0, Lcom/facebook/drawee/b/a$1;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/datasource/b;->f()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/a;Ljava/lang/String;Lcom/facebook/datasource/b;Ljava/lang/Throwable;Z)V

    .line 428
    return-void
.end method
