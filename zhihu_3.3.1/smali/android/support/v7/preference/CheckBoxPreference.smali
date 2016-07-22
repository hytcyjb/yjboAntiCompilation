.class public Landroid/support/v7/preference/CheckBoxPreference;
.super Landroid/support/v7/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    sget v0, Landroid/support/v7/preference/i$a;->checkBoxPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    sget-object v0, Landroid/support/v7/preference/i$d;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    sget v1, Landroid/support/v7/preference/i$d;->CheckBoxPreference_summaryOn:I

    sget v2, Landroid/support/v7/preference/i$d;->CheckBoxPreference_android_summaryOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->e(Ljava/lang/CharSequence;)V

    .line 53
    sget v1, Landroid/support/v7/preference/i$d;->CheckBoxPreference_summaryOff:I

    sget v2, Landroid/support/v7/preference/i$d;->CheckBoxPreference_android_summaryOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->f(Ljava/lang/CharSequence;)V

    .line 56
    sget v1, Landroid/support/v7/preference/i$d;->CheckBoxPreference_disableDependentsState:I

    sget v2, Landroid/support/v7/preference/i$d;->CheckBoxPreference_android_disableDependentsState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->g(Z)V

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/support/v7/preference/CheckBoxPreference;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 95
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    sget v0, Landroid/support/v7/preference/i$b;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Landroid/support/v7/preference/CheckBoxPreference;->d(Landroid/view/View;)V

    .line 102
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CheckBoxPreference;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Landroid/widget/Checkable;

    iget-boolean v0, p0, Landroid/support/v7/preference/CheckBoxPreference;->a:Z

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/h;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->a(Landroid/support/v7/preference/h;)V

    .line 75
    sget v0, Landroid/support/v7/preference/i$b;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Landroid/support/v7/preference/CheckBoxPreference;->a:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->b(Landroid/support/v7/preference/h;)V

    .line 81
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->a(Landroid/view/View;)V

    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->c(Landroid/view/View;)V

    .line 90
    return-void
.end method
