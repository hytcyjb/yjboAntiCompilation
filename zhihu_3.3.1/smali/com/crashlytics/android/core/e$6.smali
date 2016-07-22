.class Lcom/crashlytics/android/core/e$6;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/e;->z()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/settings/q$b",
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
    .line 908
    iput-object p1, p0, Lcom/crashlytics/android/core/e$6;->a:Lcom/crashlytics/android/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/settings/s;)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    .line 911
    const/4 v0, 0x1

    .line 913
    iget-object v1, p0, Lcom/crashlytics/android/core/e$6;->a:Lcom/crashlytics/android/core/e;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/e;->E()Lio/fabric/sdk/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/c;->b()Landroid/app/Activity;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/crashlytics/android/core/e$6;->a:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    iget-object v0, p0, Lcom/crashlytics/android/core/e$6;->a:Lcom/crashlytics/android/core/e;

    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/s;->c:Lio/fabric/sdk/android/services/settings/o;

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/core/e;->a(Lcom/crashlytics/android/core/e;Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/o;)Z

    move-result v0

    .line 920
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lio/fabric/sdk/android/services/settings/s;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/e$6;->a(Lio/fabric/sdk/android/services/settings/s;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
