.class Landroid/support/design/widget/z;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/z$c;,
        Landroid/support/design/widget/z$b;,
        Landroid/support/design/widget/z$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/design/widget/t$d;

.field private static final b:Landroid/support/design/widget/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Landroid/support/design/widget/z$1;

    invoke-direct {v0}, Landroid/support/design/widget/z$1;-><init>()V

    sput-object v0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/t$d;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/support/design/widget/z$c;

    invoke-direct {v0, v2}, Landroid/support/design/widget/z$c;-><init>(Landroid/support/design/widget/z$1;)V

    sput-object v0, Landroid/support/design/widget/z;->b:Landroid/support/design/widget/z$a;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/support/design/widget/z$b;

    invoke-direct {v0, v2}, Landroid/support/design/widget/z$b;-><init>(Landroid/support/design/widget/z$1;)V

    sput-object v0, Landroid/support/design/widget/z;->b:Landroid/support/design/widget/z$a;

    goto :goto_0
.end method

.method static a()Landroid/support/design/widget/t;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/t$d;

    invoke-interface {v0}, Landroid/support/design/widget/t$d;->a()Landroid/support/design/widget/t;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    sget-object v0, Landroid/support/design/widget/z;->b:Landroid/support/design/widget/z$a;

    invoke-interface {v0, p0}, Landroid/support/design/widget/z$a;->a(Landroid/view/View;)V

    .line 65
    return-void
.end method
