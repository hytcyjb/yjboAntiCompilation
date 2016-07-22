.class Landroid/support/v4/app/e;
.super Ljava/lang/Object;
.source "ActivityCompatJB.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 35
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 27
    return-void
.end method
