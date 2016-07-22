.class public Landroid/support/design/internal/b;
.super Landroid/support/v7/view/menu/p;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/a;Landroid/support/v7/view/menu/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/p;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/p;->a(Z)V

    .line 39
    invoke-virtual {p0}, Landroid/support/design/internal/b;->s()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/f;->a(Z)V

    .line 40
    return-void
.end method
