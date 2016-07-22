.class public Lcom/zhihu/android/app/ui/dialog/s;
.super Landroid/support/v7/app/o;
.source "ZHDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/o;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/support/v4/app/p;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/o;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method
