.class Lcom/crashlytics/android/core/i$2;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->b()V
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
.field final synthetic a:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/crashlytics/android/core/i$2;->a:Lcom/crashlytics/android/core/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/crashlytics/android/core/i$2;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->b(Lcom/crashlytics/android/core/i;)V

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
