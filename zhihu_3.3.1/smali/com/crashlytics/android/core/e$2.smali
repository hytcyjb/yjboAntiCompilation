.class Lcom/crashlytics/android/core/e$2;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/e;->s()V
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
.field final synthetic a:Lcom/crashlytics/android/core/e;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/e;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/crashlytics/android/core/e$2;->a:Lcom/crashlytics/android/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/crashlytics/android/core/e$2;->a:Lcom/crashlytics/android/core/e;

    invoke-static {v0}, Lcom/crashlytics/android/core/e;->a(Lcom/crashlytics/android/core/e;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 802
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
