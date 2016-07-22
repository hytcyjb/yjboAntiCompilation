.class Landroid/support/v4/b/a/j$b;
.super Landroid/support/v4/b/a/j$a;
.source "DrawableWrapperDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Landroid/support/v4/b/a/j$a;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    .line 370
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 374
    new-instance v0, Landroid/support/v4/b/a/j;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/b/a/j;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
