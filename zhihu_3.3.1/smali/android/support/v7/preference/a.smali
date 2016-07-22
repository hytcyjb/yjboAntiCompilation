.class public Landroid/support/v7/preference/a;
.super Landroid/support/v7/preference/c;
.source "EditTextPreferenceDialogFragmentCompat.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/preference/c;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v7/preference/a;
    .locals 3
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/support/v7/preference/a;

    invoke-direct {v0}, Landroid/support/v7/preference/a;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 36
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/a;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method

.method private c()Landroid/support/v7/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/v7/preference/a;->b()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/preference/c;->a(Landroid/view/View;)V

    .line 61
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/support/v7/preference/a;->a:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Landroid/support/v7/preference/a;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/preference/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Landroid/support/v7/preference/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-direct {p0}, Landroid/support/v7/preference/a;->c()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/EditTextPreference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0}, Landroid/support/v7/preference/a;->c()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/EditTextPreference;->a(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/preference/c;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-direct {p0}, Landroid/support/v7/preference/a;->c()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/a;->b:Ljava/lang/CharSequence;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/a;->b:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/preference/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "EditTextPreferenceDialogFragment.text"

    iget-object v1, p0, Landroid/support/v7/preference/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
