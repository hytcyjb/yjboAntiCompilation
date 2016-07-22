.class Lcom/crashlytics/android/a/b$1;
.super Lio/fabric/sdk/android/a$b;
.source "ActivityLifecycleCheckForUpdatesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/a/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/crashlytics/android/a/b$1;->a:Lcom/crashlytics/android/a/b;

    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/crashlytics/android/a/b$1;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/crashlytics/android/a/b$1;->a:Lcom/crashlytics/android/a/b;

    invoke-static {v0}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/a/b$1$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/a/b$1$1;-><init>(Lcom/crashlytics/android/a/b$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 31
    :cond_0
    return-void
.end method
