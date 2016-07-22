.class Lcom/crashlytics/android/core/i$3;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/crashlytics/android/core/i$3;->a:Lcom/crashlytics/android/core/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/crashlytics/android/core/i$3;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 457
    :goto_0
    return-object v0

    .line 449
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/crashlytics/android/core/i$3;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->c(Lcom/crashlytics/android/core/i;)Lcom/crashlytics/android/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->v()Lcom/crashlytics/android/core/a/a/d;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1

    .line 452
    iget-object v1, p0, Lcom/crashlytics/android/core/i$3;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/i;Lcom/crashlytics/android/core/a/a/d;)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/i$3;->a:Lcom/crashlytics/android/core/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/i;Z)V

    .line 455
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i$3;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
