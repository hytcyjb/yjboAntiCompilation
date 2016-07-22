.class Lcom/crashlytics/android/core/e$1;
.super Lio/fabric/sdk/android/services/concurrency/d;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/e;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/d",
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
    .line 759
    iput-object p1, p0, Lcom/crashlytics/android/core/e$1;->a:Lcom/crashlytics/android/core/e;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/crashlytics/android/core/e$1;->a:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
