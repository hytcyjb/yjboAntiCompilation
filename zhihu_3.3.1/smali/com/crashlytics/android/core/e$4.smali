.class Lcom/crashlytics/android/core/e$4;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/e;->u()Z
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
.field final synthetic a:Lcom/crashlytics/android/core/e;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/e;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/crashlytics/android/core/e$4;->a:Lcom/crashlytics/android/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/crashlytics/android/core/e$4;->a:Lcom/crashlytics/android/core/e;

    invoke-static {v0}, Lcom/crashlytics/android/core/e;->a(Lcom/crashlytics/android/core/e;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e$4;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
