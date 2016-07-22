.class Lcom/crashlytics/android/a/b$1$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleCheckForUpdatesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/a/b$1;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/a/b$1;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b$1;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/a/b$1$1;->a:Lcom/crashlytics/android/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/a/b$1$1;->a:Lcom/crashlytics/android/a/b$1;

    iget-object v0, v0, Lcom/crashlytics/android/a/b$1;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/b;->c()V

    .line 28
    return-void
.end method
