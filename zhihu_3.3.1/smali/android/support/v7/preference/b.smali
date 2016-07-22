.class public Landroid/support/v7/preference/b;
.super Landroid/support/v7/preference/c;
.source "ListPreferenceDialogFragmentCompat.java"


# instance fields
.field private a:I

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/preference/c;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Landroid/support/v7/preference/b;->a:I

    return p1
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v7/preference/b;
    .locals 3
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/support/v7/preference/b;

    invoke-direct {v0}, Landroid/support/v7/preference/b;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/b;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 79
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private c()Landroid/support/v7/preference/ListPreference;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/support/v7/preference/b;->b()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/support/v7/app/e$a;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/preference/c;->a(Landroid/support/v7/app/e$a;)V

    .line 99
    iget-object v0, p0, Landroid/support/v7/preference/b;->b:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v7/preference/b;->a:I

    new-instance v2, Landroid/support/v7/preference/b$1;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/b$1;-><init>(Landroid/support/v7/preference/b;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/e$a;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    .line 119
    invoke-virtual {p1, v3, v3}, Landroid/support/v7/app/e$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    .line 120
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/v7/preference/b;->c()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 125
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/support/v7/preference/b;->a:I

    if-ltz v1, :cond_0

    .line 126
    iget-object v1, p0, Landroid/support/v7/preference/b;->c:[Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v7/preference/b;->a:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/preference/c;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-nez p1, :cond_2

    .line 50
    invoke-direct {p0}, Landroid/support/v7/preference/b;->c()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->g()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/b;->a:I

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->g()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/b;->b:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/b;->c:[Ljava/lang/CharSequence;

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/b;->a:I

    .line 62
    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v0}, Landroid/support/v7/preference/b;->a(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/b;->b:[Ljava/lang/CharSequence;

    .line 63
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v0}, Landroid/support/v7/preference/b;->a(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/b;->c:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/preference/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Landroid/support/v7/preference/b;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroid/support/v7/preference/b;->b:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/support/v7/preference/b;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 72
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Landroid/support/v7/preference/b;->c:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/support/v7/preference/b;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
