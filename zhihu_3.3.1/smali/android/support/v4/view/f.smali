.class public final Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/f$c;,
        Landroid/support/v4/view/f$b;,
        Landroid/support/v4/view/f$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/support/v4/view/f$c;

    invoke-direct {v0}, Landroid/support/v4/view/f$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/f$a;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/support/v4/view/f$b;

    invoke-direct {v0}, Landroid/support/v4/view/f$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/f$a;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/f$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/f$a;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    sget-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/f$a;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/f$a;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 133
    return-void
.end method
