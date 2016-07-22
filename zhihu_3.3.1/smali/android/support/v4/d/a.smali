.class public final Landroid/support/v4/d/a;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/d/a$d;,
        Landroid/support/v4/d/a$c;,
        Landroid/support/v4/d/a$b;,
        Landroid/support/v4/d/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/d/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/support/v4/d/a$d;

    invoke-direct {v0}, Landroid/support/v4/d/a$d;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/a$a;

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    new-instance v0, Landroid/support/v4/d/a$c;

    invoke-direct {v0}, Landroid/support/v4/d/a$c;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/a$a;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Landroid/support/v4/d/a$b;

    invoke-direct {v0}, Landroid/support/v4/d/a$b;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/a$a;

    goto :goto_0
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    sget-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/a$a;

    invoke-interface {v0, p0}, Landroid/support/v4/d/a$a;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
