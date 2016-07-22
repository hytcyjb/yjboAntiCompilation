.class Landroid/support/v4/view/a/p;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 152
    return-void
.end method

.method public static a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 184
    return-void
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 160
    return-void
.end method

.method public static c(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 176
    return-void
.end method

.method public static d(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 180
    return-void
.end method

.method public static e(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 192
    return-void
.end method
