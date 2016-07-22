.class public abstract Landroid/support/v7/preference/TwoStatePreference;
.super Landroid/support/v7/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_1
    check-cast p1, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    .line 255
    invoke-virtual {p1}, Landroid/support/v7/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 256
    iget-boolean v0, p1, Landroid/support/v7/preference/TwoStatePreference$SavedState;->a:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->f(Z)V

    goto :goto_0
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->e(Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->f(Z)V

    .line 188
    return-void

    .line 186
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    return v0
.end method

.method protected b(Landroid/support/v7/preference/h;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->b(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 204
    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 208
    const/4 v1, 0x1

    .line 209
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/preference/TwoStatePreference;->b:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 210
    iget-object v1, p0, Landroid/support/v7/preference/TwoStatePreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    .line 216
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 217
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->k()Ljava/lang/CharSequence;

    move-result-object v2

    .line 218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 219
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v0

    .line 223
    :goto_2
    const/16 v1, 0x8

    .line 224
    if-nez v2, :cond_4

    .line 228
    :goto_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 229
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_3
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/preference/TwoStatePreference;->c:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    iget-object v1, p0, Landroid/support/v7/preference/TwoStatePreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    .line 214
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Landroid/support/v7/preference/TwoStatePreference;->b:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->F()V

    .line 112
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/v7/preference/TwoStatePreference;->c:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->F()V

    .line 140
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    if-eq v0, p1, :cond_2

    move v0, v1

    .line 76
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->d:Z

    if-nez v2, :cond_1

    .line 77
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    .line 78
    iput-boolean v1, p0, Landroid/support/v7/preference/TwoStatePreference;->d:Z

    .line 79
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->d(Z)Z

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->c(Z)V

    .line 82
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->F()V

    .line 85
    :cond_1
    return-void

    .line 75
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-boolean p1, p0, Landroid/support/v7/preference/TwoStatePreference;->e:Z

    .line 177
    return-void
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->e:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    .line 99
    :goto_0
    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 98
    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->a:Z

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method protected i()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    :goto_0
    return-object v0

    .line 241
    :cond_0
    new-instance v1, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 242
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->a()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/preference/TwoStatePreference$SavedState;->a:Z

    move-object v0, v1

    .line 243
    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 62
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 63
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->f(Z)V

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
