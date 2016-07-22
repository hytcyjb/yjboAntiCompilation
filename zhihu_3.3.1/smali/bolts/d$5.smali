.class Lbolts/d$5;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/d;->b(Lbolts/c;Ljava/util/concurrent/Executor;)Lbolts/d;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/d$a;

.field final synthetic b:Lbolts/c;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/d;


# direct methods
.method constructor <init>(Lbolts/d;Lbolts/d$a;Lbolts/c;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lbolts/d$5;->d:Lbolts/d;

    iput-object p2, p0, Lbolts/d$5;->a:Lbolts/d$a;

    iput-object p3, p0, Lbolts/d$5;->b:Lbolts/c;

    iput-object p4, p0, Lbolts/d$5;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lbolts/d$5;->b(Lbolts/d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/d;)Ljava/lang/Void;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lbolts/d$5;->a:Lbolts/d$a;

    iget-object v1, p0, Lbolts/d$5;->b:Lbolts/c;

    iget-object v2, p0, Lbolts/d$5;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/d;->b(Lbolts/d$a;Lbolts/c;Lbolts/d;Ljava/util/concurrent/Executor;)V

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method
