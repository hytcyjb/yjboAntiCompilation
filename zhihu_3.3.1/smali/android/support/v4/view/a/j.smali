.class Landroid/support/v4/view/a/j;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr2.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
