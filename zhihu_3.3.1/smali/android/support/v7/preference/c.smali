.class public abstract Landroid/support/v7/preference/c;
.super Landroid/support/v4/app/k;
.source "PreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/support/v7/preference/DialogPreference;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I

.field private g:Landroid/graphics/drawable/BitmapDrawable;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 203
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 204
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 215
    iget v1, p0, Landroid/support/v7/preference/c;->f:I

    .line 216
    if-nez v1, :cond_0

    .line 221
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 221
    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/app/e$a;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 232
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    iget-object v2, p0, Landroid/support/v7/preference/c;->e:Ljava/lang/CharSequence;

    .line 236
    const/16 v0, 0x8

    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 240
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 246
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_2
    return-void
.end method

.method public abstract a(Z)V
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/support/v7/preference/DialogPreference;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference$a;

    .line 174
    invoke-interface {v0, v1}, Landroid/support/v7/preference/DialogPreference$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference;

    iput-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput p2, p0, Landroid/support/v7/preference/c;->h:I

    .line 255
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    instance-of v1, v0, Landroid/support/v7/preference/DialogPreference$a;

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target fragment must implement TargetFragment interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    check-cast v0, Landroid/support/v7/preference/DialogPreference$a;

    .line 84
    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-nez p1, :cond_4

    .line 86
    invoke-interface {v0, v1}, Landroid/support/v7/preference/DialogPreference$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference;

    iput-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    .line 87
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->b:Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->c:Ljava/lang/CharSequence;

    .line 89
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->d:Ljava/lang/CharSequence;

    .line 90
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->e:Ljava/lang/CharSequence;

    .line 91
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DialogPreference;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/c;->f:I

    .line 93
    iget-object v0, p0, Landroid/support/v7/preference/c;->a:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 95
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Landroid/support/v7/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    .line 115
    :cond_2
    :goto_0
    return-void

    .line 97
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v7/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->b:Ljava/lang/CharSequence;

    .line 106
    const-string v0, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->c:Ljava/lang/CharSequence;

    .line 107
    const-string v0, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->d:Ljava/lang/CharSequence;

    .line 108
    const-string v0, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/c;->e:Ljava/lang/CharSequence;

    .line 109
    const-string v0, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/c;->f:I

    .line 110
    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 111
    if-eqz v0, :cond_2

    .line 112
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/support/v7/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/support/v7/preference/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    .line 135
    const/4 v1, -0x2

    iput v1, p0, Landroid/support/v7/preference/c;->h:I

    .line 137
    new-instance v1, Landroid/support/v7/app/e$a;

    invoke-direct {v1, v0}, Landroid/support/v7/app/e$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/support/v7/preference/c;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/e$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/e$a;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/e$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/e$a;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/c;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/e$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/c;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/e$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    move-result-object v1

    .line 143
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/c;->a(Landroid/view/View;)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/support/v7/app/e$a;->b(Landroid/view/View;)Landroid/support/v7/app/e$a;

    .line 151
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/c;->a(Landroid/support/v7/app/e$a;)V

    .line 154
    invoke-virtual {v1}, Landroid/support/v7/app/e$a;->b()Landroid/support/v7/app/e;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/preference/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0, v0}, Landroid/support/v7/preference/c;->a(Landroid/app/Dialog;)V

    .line 159
    :cond_0
    return-object v0

    .line 148
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/c;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/e$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/e$a;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 260
    iget v0, p0, Landroid/support/v7/preference/c;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/c;->a(Z)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "PreferenceDialogFragment.title"

    iget-object v1, p0, Landroid/support/v7/preference/c;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 122
    const-string v0, "PreferenceDialogFragment.positiveText"

    iget-object v1, p0, Landroid/support/v7/preference/c;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 123
    const-string v0, "PreferenceDialogFragment.negativeText"

    iget-object v1, p0, Landroid/support/v7/preference/c;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 124
    const-string v0, "PreferenceDialogFragment.message"

    iget-object v1, p0, Landroid/support/v7/preference/c;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 125
    const-string v0, "PreferenceDialogFragment.layout"

    iget v1, p0, Landroid/support/v7/preference/c;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Landroid/support/v7/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "PreferenceDialogFragment.icon"

    iget-object v1, p0, Landroid/support/v7/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    :cond_0
    return-void
.end method
