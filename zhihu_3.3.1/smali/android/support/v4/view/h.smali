.class public final Landroid/support/v4/view/h;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/h$c;,
        Landroid/support/v4/view/h$b;,
        Landroid/support/v4/view/h$a;,
        Landroid/support/v4/view/h$d;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/h$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/support/v4/view/h$c;

    invoke-direct {v0}, Landroid/support/v4/view/h$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$d;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/support/v4/view/h$a;

    invoke-direct {v0}, Landroid/support/v4/view/h$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 192
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/h$d;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/h$d;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/h$d;->a(Landroid/view/KeyEvent;)V

    .line 197
    return-void
.end method
