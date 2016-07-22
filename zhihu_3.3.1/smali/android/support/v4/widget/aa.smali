.class public final Landroid/support/v4/widget/aa;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/aa$a;,
        Landroid/support/v4/widget/aa$d;,
        Landroid/support/v4/widget/aa$c;,
        Landroid/support/v4/widget/aa$e;,
        Landroid/support/v4/widget/aa$b;,
        Landroid/support/v4/widget/aa$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/aa$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 165
    new-instance v0, Landroid/support/v4/widget/aa$a;

    invoke-direct {v0}, Landroid/support/v4/widget/aa$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    .line 175
    :goto_0
    return-void

    .line 166
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 167
    new-instance v0, Landroid/support/v4/widget/aa$d;

    invoke-direct {v0}, Landroid/support/v4/widget/aa$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    goto :goto_0

    .line 168
    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 169
    new-instance v0, Landroid/support/v4/widget/aa$c;

    invoke-direct {v0}, Landroid/support/v4/widget/aa$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    goto :goto_0

    .line 170
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 171
    new-instance v0, Landroid/support/v4/widget/aa$e;

    invoke-direct {v0}, Landroid/support/v4/widget/aa$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    goto :goto_0

    .line 173
    :cond_3
    new-instance v0, Landroid/support/v4/widget/aa$b;

    invoke-direct {v0}, Landroid/support/v4/widget/aa$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)I
    .locals 1
    .parameter

    .prologue
    .line 247
    sget-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/aa$f;->a(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    sget-object v0, Landroid/support/v4/widget/aa;->a:Landroid/support/v4/widget/aa$f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/aa$f;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 196
    return-void
.end method
