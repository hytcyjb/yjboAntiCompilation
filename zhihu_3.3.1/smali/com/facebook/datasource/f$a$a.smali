.class Lcom/facebook/datasource/f$a$a;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/f$a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/f$a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/facebook/datasource/f$a$a;->a:Lcom/facebook/datasource/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Lcom/facebook/datasource/f$a$a;->b:I

    .line 226
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-interface {p1}, Lcom/facebook/datasource/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/facebook/datasource/f$a$a;->a:Lcom/facebook/datasource/f$a;

    iget v1, p0, Lcom/facebook/datasource/f$a$a;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/f$a;->a(Lcom/facebook/datasource/f$a;ILcom/facebook/datasource/b;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-interface {p1}, Lcom/facebook/datasource/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/datasource/f$a$a;->a:Lcom/facebook/datasource/f$a;

    iget v1, p0, Lcom/facebook/datasource/f$a$a;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/f$a;->b(Lcom/facebook/datasource/f$a;ILcom/facebook/datasource/b;)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/datasource/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/datasource/f$a$a;->a:Lcom/facebook/datasource/f$a;

    iget v1, p0, Lcom/facebook/datasource/f$a$a;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/f$a;->b(Lcom/facebook/datasource/f$a;ILcom/facebook/datasource/b;)V

    .line 240
    return-void
.end method

.method public c(Lcom/facebook/datasource/b;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method public d(Lcom/facebook/datasource/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/facebook/datasource/f$a$a;->b:I

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/datasource/f$a$a;->a:Lcom/facebook/datasource/f$a;

    invoke-interface {p1}, Lcom/facebook/datasource/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/datasource/f$a;->a(F)Z

    .line 251
    :cond_0
    return-void
.end method
