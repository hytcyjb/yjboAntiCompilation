.class public Lcom/didi/common/handler/UiThreadHandler;
.super Ljava/lang/Object;
.source "UiThreadHandler.java"


# static fields
.field private static token:Ljava/lang/Object;

.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/didi/common/handler/UiThreadHandler;->token:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final post(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 18
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 24
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public static final postOnceDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 35
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    sget-object v1, Lcom/didi/common/handler/UiThreadHandler;->token:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 42
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/didi/common/handler/UiThreadHandler;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
