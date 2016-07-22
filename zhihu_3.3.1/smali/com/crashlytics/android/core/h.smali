.class Lcom/crashlytics/android/core/h;
.super Ljava/lang/Object;
.source "CrashlyticsPinningInfoProvider.java"

# interfaces
.implements Lio/fabric/sdk/android/services/network/e;


# instance fields
.field private final a:Lcom/crashlytics/android/core/u;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/u;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/crashlytics/android/core/h;->a:Lcom/crashlytics/android/core/u;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->a:Lcom/crashlytics/android/core/u;

    invoke-interface {v0}, Lcom/crashlytics/android/core/u;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->a:Lcom/crashlytics/android/core/u;

    invoke-interface {v0}, Lcom/crashlytics/android/core/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->a:Lcom/crashlytics/android/core/u;

    invoke-interface {v0}, Lcom/crashlytics/android/core/u;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    return-wide v0
.end method
