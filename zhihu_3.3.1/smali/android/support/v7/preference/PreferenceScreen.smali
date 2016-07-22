.class public final Landroid/support/v7/preference/PreferenceScreen;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    sget v0, Landroid/support/v7/preference/i$a;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceScreen;->a:Z

    .line 85
    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceScreen;->a:Z

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->n()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->H()Landroid/support/v7/preference/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->g()Landroid/support/v7/preference/g$b;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0}, Landroid/support/v7/preference/g$b;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0
.end method
