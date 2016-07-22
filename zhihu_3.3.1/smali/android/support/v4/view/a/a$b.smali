.class Landroid/support/v4/view/a/a$b;
.super Landroid/support/v4/view/a/a$a;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v4/view/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-static {p1}, Landroid/support/v4/view/a/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p1, p2}, Landroid/support/v4/view/a/b;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 87
    return-void
.end method
