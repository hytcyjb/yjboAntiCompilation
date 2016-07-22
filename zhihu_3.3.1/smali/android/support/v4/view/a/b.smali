.class Landroid/support/v4/view/a/b;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatKitKat.java"


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 24
    return-void
.end method
