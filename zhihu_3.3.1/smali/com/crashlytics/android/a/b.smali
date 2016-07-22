.class Lcom/crashlytics/android/a/b;
.super Lcom/crashlytics/android/a/a;
.source "ActivityLifecycleCheckForUpdatesController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/a$b;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/crashlytics/android/a/a;-><init>()V

    .line 18
    new-instance v0, Lcom/crashlytics/android/a/b$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/b$1;-><init>(Lcom/crashlytics/android/a/b;)V

    iput-object v0, p0, Lcom/crashlytics/android/a/b;->a:Lio/fabric/sdk/android/a$b;

    .line 38
    iput-object p2, p0, Lcom/crashlytics/android/a/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 39
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/a$b;)Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/a/b;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
