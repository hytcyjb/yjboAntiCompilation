.class public Lcom/facebook/common/c/i;
.super Lcom/facebook/common/c/e;
.source "UiThreadImmediateExecutorService.java"


# static fields
.field private static a:Lcom/facebook/common/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/c/i;->a:Lcom/facebook/common/c/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/facebook/common/c/e;-><init>(Landroid/os/Handler;)V

    .line 28
    return-void
.end method

.method public static b()Lcom/facebook/common/c/i;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/common/c/i;->a:Lcom/facebook/common/c/i;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/facebook/common/c/i;

    invoke-direct {v0}, Lcom/facebook/common/c/i;-><init>()V

    sput-object v0, Lcom/facebook/common/c/i;->a:Lcom/facebook/common/c/i;

    .line 34
    :cond_0
    sget-object v0, Lcom/facebook/common/c/i;->a:Lcom/facebook/common/c/i;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/facebook/common/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/common/c/e;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
