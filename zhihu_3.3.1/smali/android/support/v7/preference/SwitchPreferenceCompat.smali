.class public Landroid/support/v7/preference/SwitchPreferenceCompat;
.super Landroid/support/v7/preference/TwoStatePreference;
.source "SwitchPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SwitchPreferenceCompat$1;,
        Landroid/support/v7/preference/SwitchPreferenceCompat$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/support/v7/preference/SwitchPreferenceCompat$a;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    sget v0, Landroid/support/v7/preference/i$a;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v0, Landroid/support/v7/preference/SwitchPreferenceCompat$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat$a;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$1;)V

    iput-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->b:Landroid/support/v7/preference/SwitchPreferenceCompat$a;

    .line 78
    sget-object v0, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    sget v1, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_summaryOn:I

    sget v2, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_android_summaryOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->e(Ljava/lang/CharSequence;)V

    .line 84
    sget v1, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_summaryOff:I

    sget v2, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_android_summaryOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->f(Ljava/lang/CharSequence;)V

    .line 87
    sget v1, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_switchTextOn:I

    sget v2, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_android_switchTextOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->c(Ljava/lang/CharSequence;)V

    .line 91
    sget v1, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_switchTextOff:I

    sget v2, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_android_switchTextOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->d(Ljava/lang/CharSequence;)V

    .line 95
    sget v1, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_disableDependentsState:I

    sget v2, Landroid/support/v7/preference/i$d;->SwitchPreferenceCompat_android_disableDependentsState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->g(Z)V

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 210
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    sget v0, Landroid/support/v7/preference/i$b;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->d(Landroid/view/View;)V

    .line 217
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 223
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 227
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->a:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 229
    :cond_1
    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_2

    .line 230
    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    .line 231
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->b:Landroid/support/v7/preference/SwitchPreferenceCompat$a;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/h;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->a(Landroid/support/v7/preference/h;)V

    .line 137
    sget v0, Landroid/support/v7/preference/i$b;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->d(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->b(Landroid/support/v7/preference/h;)V

    .line 140
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->a(Landroid/view/View;)V

    .line 204
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->c(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->c:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->F()V

    .line 151
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->d:Ljava/lang/CharSequence;

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->F()V

    .line 162
    return-void
.end method
