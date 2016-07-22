.class Lbolts/d$2$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/d$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/c",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/d$2;


# direct methods
.method constructor <init>(Lbolts/d$2;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lbolts/d$2$1;->a:Lbolts/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lbolts/d$2$1;->b(Lbolts/d;)Ljava/lang/Void;

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
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p1}, Lbolts/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lbolts/d$2$1;->a:Lbolts/d$2;

    iget-object v0, v0, Lbolts/d$2;->c:Lbolts/d$a;

    invoke-virtual {v0}, Lbolts/d$a;->c()V

    .line 500
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lbolts/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lbolts/d$2$1;->a:Lbolts/d$2;

    iget-object v0, v0, Lbolts/d$2;->c:Lbolts/d$a;

    invoke-virtual {p1}, Lbolts/d;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/d$a;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lbolts/d$2$1;->a:Lbolts/d$2;

    iget-object v0, v0, Lbolts/d$2;->c:Lbolts/d$a;

    invoke-virtual {p1}, Lbolts/d;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/d$a;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
