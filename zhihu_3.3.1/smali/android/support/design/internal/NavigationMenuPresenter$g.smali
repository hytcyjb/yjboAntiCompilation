.class Landroid/support/design/internal/NavigationMenuPresenter$g;
.super Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 295
    sget v0, Landroid/support/design/a$f;->design_navigation_item_separator:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 296
    return-void
.end method
