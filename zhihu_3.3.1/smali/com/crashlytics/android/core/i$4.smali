.class Lcom/crashlytics/android/core/i$4;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    iget-object v1, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    sget-object v2, Lcom/crashlytics/android/core/d;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/i;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/i;->a([Ljava/io/File;)V

    .line 690
    return-void
.end method
