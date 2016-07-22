.class Lcom/crashlytics/android/core/i$9;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/crashlytics/android/core/i$9;->d:Lcom/crashlytics/android/core/i;

    iput-object p2, p0, Lcom/crashlytics/android/core/i$9;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/i$9;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/i$9;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/crashlytics/android/core/i$9;->d:Lcom/crashlytics/android/core/i;

    iget-object v1, p0, Lcom/crashlytics/android/core/i$9;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/core/i$9;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/core/i$9;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i$9;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
