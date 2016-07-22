.class public Landroid/support/v7/preference/EditTextPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    sget v0, Landroid/support/v7/preference/i$a;->editTextPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_1
    check-cast p1, Landroid/support/v7/preference/EditTextPreference$SavedState;

    .line 120
    invoke-virtual {p1}, Landroid/support/v7/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 121
    iget-object v0, p1, Landroid/support/v7/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/EditTextPreference;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->h()Z

    move-result v0

    .line 64
    iput-object p1, p0, Landroid/support/v7/preference/EditTextPreference;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/EditTextPreference;->e(Ljava/lang/String;)Z

    .line 68
    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->h()Z

    move-result v1

    .line 69
    if-eq v1, v0, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/EditTextPreference;->c(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/EditTextPreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/EditTextPreference;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/EditTextPreference;->a(Ljava/lang/String;)V

    .line 91
    return-void

    .line 90
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/preference/EditTextPreference;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/preference/EditTextPreference;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-instance v1, Landroid/support/v7/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v7/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 108
    goto :goto_0
.end method
