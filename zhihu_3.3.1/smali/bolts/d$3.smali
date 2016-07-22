.class final Lbolts/d$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/d;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbolts/d$a;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lbolts/d$a;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lbolts/d$3;->a:Lbolts/d$a;

    iput-object p2, p0, Lbolts/d$3;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lbolts/d$3;->a:Lbolts/d$a;

    iget-object v1, p0, Lbolts/d$3;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/d$a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lbolts/d$3;->a:Lbolts/d$a;

    invoke-virtual {v1, v0}, Lbolts/d$a;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
