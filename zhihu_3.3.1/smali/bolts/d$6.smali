.class final Lbolts/d$6;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/d;->c(Lbolts/d$a;Lbolts/c;Lbolts/d;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbolts/c;

.field final synthetic b:Lbolts/d;

.field final synthetic c:Lbolts/d$a;


# direct methods
.method constructor <init>(Lbolts/c;Lbolts/d;Lbolts/d$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lbolts/d$6;->a:Lbolts/c;

    iput-object p2, p0, Lbolts/d$6;->b:Lbolts/d;

    iput-object p3, p0, Lbolts/d$6;->c:Lbolts/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lbolts/d$6;->a:Lbolts/c;

    iget-object v1, p0, Lbolts/d$6;->b:Lbolts/d;

    invoke-interface {v0, v1}, Lbolts/c;->a(Lbolts/d;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lbolts/d$6;->c:Lbolts/d$a;

    invoke-virtual {v1, v0}, Lbolts/d$a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    iget-object v1, p0, Lbolts/d$6;->c:Lbolts/d$a;

    invoke-virtual {v1, v0}, Lbolts/d$a;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
