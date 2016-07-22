.class Landroid/support/v7/app/b$f;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/support/v7/app/c$a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p1, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    .line 511
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-direct {p0, p1}, Landroid/support/v7/app/b$f;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v7/app/c;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v7/app/b$f;->b:Landroid/support/v7/app/c$a;

    iget-object v1, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c$a;Landroid/app/Activity;I)Landroid/support/v7/app/c$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b$f;->b:Landroid/support/v7/app/c$a;

    .line 549
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 540
    iget-object v0, p0, Landroid/support/v7/app/b$f;->b:Landroid/support/v7/app/c$a;

    iget-object v1, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c$a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/c$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b$f;->b:Landroid/support/v7/app/c$a;

    .line 542
    iget-object v0, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 543
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v7/app/b$f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
