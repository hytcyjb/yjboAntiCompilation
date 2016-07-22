.class Landroid/support/v4/view/t;
.super Ljava/lang/Object;
.source "MenuItemCompatIcs.java"


# direct methods
.method public static a(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method
