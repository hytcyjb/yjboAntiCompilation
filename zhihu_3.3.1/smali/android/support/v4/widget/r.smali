.class public final Landroid/support/v4/widget/r;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/r$b;,
        Landroid/support/v4/widget/r$a;,
        Landroid/support/v4/widget/r$e;,
        Landroid/support/v4/widget/r$d;,
        Landroid/support/v4/widget/r$c;,
        Landroid/support/v4/widget/r$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/r$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 137
    new-instance v0, Landroid/support/v4/widget/r$b;

    invoke-direct {v0}, Landroid/support/v4/widget/r$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 139
    new-instance v0, Landroid/support/v4/widget/r$a;

    invoke-direct {v0}, Landroid/support/v4/widget/r$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    goto :goto_0

    .line 140
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 141
    new-instance v0, Landroid/support/v4/widget/r$e;

    invoke-direct {v0}, Landroid/support/v4/widget/r$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    goto :goto_0

    .line 142
    :cond_2
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 143
    new-instance v0, Landroid/support/v4/widget/r$d;

    invoke-direct {v0}, Landroid/support/v4/widget/r$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    goto :goto_0

    .line 145
    :cond_3
    new-instance v0, Landroid/support/v4/widget/r$c;

    invoke-direct {v0}, Landroid/support/v4/widget/r$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    sget-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/r$f;->a(Landroid/widget/PopupWindow;I)V

    .line 205
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/r$f;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 172
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    sget-object v0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/r$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/r$f;->a(Landroid/widget/PopupWindow;Z)V

    .line 182
    return-void
.end method
