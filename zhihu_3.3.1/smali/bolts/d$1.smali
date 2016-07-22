.class Lbolts/d$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/c",
        "<TTResult;",
        "Lbolts/d",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public synthetic a(Lbolts/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lbolts/d$1;->b(Lbolts/d;)Lbolts/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/d;)Lbolts/d;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<TTResult;>;)",
            "Lbolts/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lbolts/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lbolts/d;->g()Lbolts/d;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Lbolts/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Lbolts/d;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Exception;)Lbolts/d;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Object;)Lbolts/d;

    move-result-object v0

    goto :goto_0
.end method
