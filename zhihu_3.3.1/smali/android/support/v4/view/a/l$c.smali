.class Landroid/support/v4/view/a/l$c;
.super Landroid/support/v4/view/a/l$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/view/a/l$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/support/v4/view/a/l$c$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/a/l$c$1;-><init>(Landroid/support/v4/view/a/l$c;Landroid/support/v4/view/a/l;)V

    invoke-static {v0}, Landroid/support/v4/view/a/n;->a(Landroid/support/v4/view/a/n$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
