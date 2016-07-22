.class public final Landroid/support/v4/view/a/a;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/a/a$b;,
        Landroid/support/v4/view/a/a$a;,
        Landroid/support/v4/view/a/a$c;,
        Landroid/support/v4/view/a/a$d;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/view/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Landroid/support/v4/view/a/a$b;

    invoke-direct {v0}, Landroid/support/v4/view/a/a$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/a$d;

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Landroid/support/v4/view/a/a$a;

    invoke-direct {v0}, Landroid/support/v4/view/a/a$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/a$d;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Landroid/support/v4/view/a/a$c;

    invoke-direct {v0}, Landroid/support/v4/view/a/a$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/a$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/o;
    .locals 1
    .parameter

    .prologue
    .line 284
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/o;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/a$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/a/a$d;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 297
    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 313
    sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/a$d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/a$d;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method
