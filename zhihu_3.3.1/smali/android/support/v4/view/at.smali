.class public final Landroid/support/v4/view/at;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/at$d;,
        Landroid/support/v4/view/at$c;,
        Landroid/support/v4/view/at$b;,
        Landroid/support/v4/view/at$a;,
        Landroid/support/v4/view/at$e;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/at$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/view/at$d;

    invoke-direct {v0}, Landroid/support/v4/view/at$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/at$e;

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/view/at$c;

    invoke-direct {v0}, Landroid/support/v4/view/at$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/at$e;

    goto :goto_0

    .line 90
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 91
    new-instance v0, Landroid/support/v4/view/at$b;

    invoke-direct {v0}, Landroid/support/v4/view/at$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/at$e;

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Landroid/support/v4/view/at$a;

    invoke-direct {v0}, Landroid/support/v4/view/at$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/at$e;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1
    .parameter

    .prologue
    .line 105
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/at$e;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at$e;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/at$e;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at$e;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
