.class Landroid/support/v7/app/b$h;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/Toolbar;

.field final b:Landroid/graphics/drawable/Drawable;

.field final c:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .parameter

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p1, p0, Landroid/support/v7/app/b$h;->a:Landroid/support/v7/widget/Toolbar;

    .line 620
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b$h;->b:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b$h;->c:Ljava/lang/CharSequence;

    .line 622
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v7/app/b$h;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    iget-object v0, p0, Landroid/support/v7/app/b$h;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/app/b$h;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/b$h;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v7/app/b$h;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 627
    invoke-virtual {p0, p2}, Landroid/support/v7/app/b$h;->a(I)V

    .line 628
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v7/app/b$h;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x1

    return v0
.end method
