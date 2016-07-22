.class public Landroid/support/v7/preference/ListPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:[Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    sget v0, Landroid/support/v7/preference/i$a;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    sget-object v0, Landroid/support/v7/preference/i$d;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    sget v1, Landroid/support/v7/preference/i$d;->ListPreference_entries:I

    sget v2, Landroid/support/v7/preference/i$d;->ListPreference_android_entries:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->c(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreference;->a:[Ljava/lang/CharSequence;

    .line 55
    sget v1, Landroid/support/v7/preference/i$d;->ListPreference_entryValues:I

    sget v2, Landroid/support/v7/preference/i$d;->ListPreference_android_entryValues:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->c(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    sget-object v0, Landroid/support/v7/preference/i$d;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    sget v1, Landroid/support/v7/preference/i$d;->Preference_summary:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_summary:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method private K()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_1
    check-cast p1, Landroid/support/v7/preference/ListPreference$SavedState;

    .line 283
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 284
    iget-object v0, p1, Landroid/support/v7/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->a(Ljava/lang/CharSequence;)V

    .line 192
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 152
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/preference/ListPreference;->e:Z

    if-nez v2, :cond_1

    .line 153
    :cond_0
    iput-object p1, p0, Landroid/support/v7/preference/ListPreference;->c:Ljava/lang/String;

    .line 154
    iput-boolean v1, p0, Landroid/support/v7/preference/ListPreference;->e:Z

    .line 155
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/ListPreference;->e(Ljava/lang/String;)Z

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/preference/ListPreference;->F()V

    .line 160
    :cond_1
    return-void

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/String;)V

    .line 259
    return-void

    .line 258
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 237
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 239
    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :goto_1
    return v0

    .line 238
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public g()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->a:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected i()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Landroid/support/v7/preference/ListPreference;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    :goto_0
    return-object v0

    .line 269
    :cond_0
    new-instance v1, Landroid/support/v7/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/preference/ListPreference;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v7/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 271
    goto :goto_0
.end method

.method public j()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public k()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/v7/preference/ListPreference;->m()Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 174
    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->k()Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/support/v7/preference/ListPreference;->K()I

    move-result v0

    .line 227
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->a:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
