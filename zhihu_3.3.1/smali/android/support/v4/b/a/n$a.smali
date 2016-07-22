.class Landroid/support/v4/b/a/n$a;
.super Landroid/support/v4/b/a/j$a;
.source "DrawableWrapperLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/support/v4/b/a/j$a;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    .line 118
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/support/v4/b/a/n;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/b/a/n;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
