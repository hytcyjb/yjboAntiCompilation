.class Landroid/support/design/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 315
    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    .line 316
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->b(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuItemView;->getItemData()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 318
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/f;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/f;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/l;I)Z

    move-result v1

    .line 319
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->b(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/design/internal/NavigationMenuPresenter$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/v7/view/menu/h;)V

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->b(Z)V

    .line 323
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Z)V

    .line 324
    return-void
.end method
