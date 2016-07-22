.class public abstract Landroid/support/v7/preference/DialogPreference;
.super Landroid/support/v7/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    sget v0, Landroid/support/v7/preference/i$a;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    sget-object v0, Landroid/support/v7/preference/i$d;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    sget v1, Landroid/support/v7/preference/i$d;->DialogPreference_dialogTitle:I

    sget v2, Landroid/support/v7/preference/i$d;->DialogPreference_android_dialogTitle:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 61
    iget-object v1, p0, Landroid/support/v7/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->t()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 67
    :cond_0
    sget v1, Landroid/support/v7/preference/i$d;->DialogPreference_dialogMessage:I

    sget v2, Landroid/support/v7/preference/i$d;->DialogPreference_android_dialogMessage:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    .line 70
    sget v1, Landroid/support/v7/preference/i$d;->DialogPreference_dialogIcon:I

    sget v2, Landroid/support/v7/preference/i$d;->DialogPreference_android_dialogIcon:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    .line 73
    sget v1, Landroid/support/v7/preference/i$d;->DialogPreference_positiveButtonText:I

    sget v2, Landroid/support/v7/preference/i$d;->DialogPreference_android_positiveButtonText:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    .line 77
    sget v1, Landroid/support/v7/preference/i$d;->DialogPreference_negativeButtonText:I

    sget v2, Landroid/support/v7/preference/i$d;->DialogPreference_android_negativeButtonText:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    .line 81
    sget v1, Landroid/support/v7/preference/i$d;->DialogPreference_dialogLayout:I

    sget v2, Landroid/support/v7/preference/i$d;->DialogPreference_android_dialogLayout:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/DialogPreference;->f:I

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/support/v7/preference/DialogPreference;->f:I

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->H()Landroid/support/v7/preference/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/Preference;)V

    .line 262
    return-void
.end method
