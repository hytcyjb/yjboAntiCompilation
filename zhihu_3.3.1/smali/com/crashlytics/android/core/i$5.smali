.class Lcom/crashlytics/android/core/i$5;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->a([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/crashlytics/android/core/i$5;->b:Lcom/crashlytics/android/core/i;

    iput-object p2, p0, Lcom/crashlytics/android/core/i$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 712
    iget-object v0, p0, Lcom/crashlytics/android/core/i$5;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
