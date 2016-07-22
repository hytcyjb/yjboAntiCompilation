.class final Lcom/crashlytics/android/core/t$a;
.super Lcom/crashlytics/android/core/t$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/t$f;Lcom/crashlytics/android/core/t$k;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/crashlytics/android/core/t$j;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/t$j;-><init>(I[Lcom/crashlytics/android/core/t$j;)V

    .line 285
    return-void
.end method
