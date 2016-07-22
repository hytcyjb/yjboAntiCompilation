.class public Landroid/support/v7/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/Preference$BaseSavedState;,
        Landroid/support/v7/preference/Preference$a;,
        Landroid/support/v7/preference/Preference$c;,
        Landroid/support/v7/preference/Preference$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Landroid/support/v7/preference/Preference$a;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private final D:Landroid/view/View$OnClickListener;

.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/preference/g;

.field private c:J

.field private d:Z

.field private e:Landroid/support/v7/preference/Preference$b;

.field private f:Landroid/support/v7/preference/Preference$c;

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/Intent;

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Bundle;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/Object;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 325
    sget v0, Landroid/support/v7/preference/i$a;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7fffffff

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v3, p0, Landroid/support/v7/preference/Preference;->g:I

    .line 115
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->p:Z

    .line 116
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->q:Z

    .line 118
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->r:Z

    .line 121
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->u:Z

    .line 122
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->v:Z

    .line 123
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->w:Z

    .line 128
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->x:Z

    .line 130
    sget v0, Landroid/support/v7/preference/i$c;->preference:I

    iput v0, p0, Landroid/support/v7/preference/Preference;->y:I

    .line 139
    new-instance v0, Landroid/support/v7/preference/Preference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference$1;-><init>(Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->D:Landroid/view/View$OnClickListener;

    .line 232
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->a:Landroid/content/Context;

    .line 234
    sget-object v0, Landroid/support/v7/preference/i$d;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    sget v1, Landroid/support/v7/preference/i$d;->Preference_icon:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_icon:I

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->j:I

    .line 240
    sget v1, Landroid/support/v7/preference/i$d;->Preference_key:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_key:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    .line 243
    sget v1, Landroid/support/v7/preference/i$d;->Preference_title:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_title:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 246
    sget v1, Landroid/support/v7/preference/i$d;->Preference_summary:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_summary:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->i:Ljava/lang/CharSequence;

    .line 249
    sget v1, Landroid/support/v7/preference/i$d;->Preference_order:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_order:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->g:I

    .line 252
    sget v1, Landroid/support/v7/preference/i$d;->Preference_fragment:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_fragment:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->n:Ljava/lang/String;

    .line 255
    sget v1, Landroid/support/v7/preference/i$d;->Preference_layout:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_layout:I

    sget v3, Landroid/support/v7/preference/i$c;->preference:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->y:I

    .line 258
    sget v1, Landroid/support/v7/preference/i$d;->Preference_widgetLayout:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_widgetLayout:I

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->z:I

    .line 261
    sget v1, Landroid/support/v7/preference/i$d;->Preference_enabled:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_enabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->p:Z

    .line 264
    sget v1, Landroid/support/v7/preference/i$d;->Preference_selectable:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_selectable:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->q:Z

    .line 267
    sget v1, Landroid/support/v7/preference/i$d;->Preference_persistent:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_persistent:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->r:Z

    .line 270
    sget v1, Landroid/support/v7/preference/i$d;->Preference_dependency:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_android_dependency:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    .line 273
    sget v1, Landroid/support/v7/preference/i$d;->Preference_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    sget v1, Landroid/support/v7/preference/i$d;->Preference_defaultValue:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/Object;

    .line 279
    :cond_0
    :goto_0
    sget v1, Landroid/support/v7/preference/i$d;->Preference_shouldDisableView:I

    sget v2, Landroid/support/v7/preference/i$d;->Preference_shouldDisableView:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->x:Z

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-void

    .line 275
    :cond_1
    sget v1, Landroid/support/v7/preference/i$d;->Preference_android_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    sget v1, Landroid/support/v7/preference/i$d;->Preference_android_defaultValue:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->c(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_1

    .line 1114
    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->b(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 1116
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1326
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 539
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 540
    check-cast p1, Landroid/view/ViewGroup;

    .line 541
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 542
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    .line 541
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->c(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1124
    if-eqz v0, :cond_0

    .line 1125
    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->c(Landroid/support/v7/preference/Preference;)V

    .line 1128
    :cond_0
    return-void
.end method

.method private b(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/util/List;

    .line 1162
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->h()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;Z)V

    .line 1165
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 1292
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v0

    .line 1293
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->E()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1294
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1295
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(ZLjava/lang/Object;)V

    .line 1300
    :cond_1
    :goto_0
    return-void

    .line 1298
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1179
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->r:Z

    return v0
.end method

.method protected B()Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()V
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 954
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->f:Landroid/support/v7/preference/Preference$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->f:Landroid/support/v7/preference/Preference$c;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$c;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->H()Landroid/support/v7/preference/g;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_3

    .line 960
    invoke-virtual {v0}, Landroid/support/v7/preference/g;->f()Landroid/support/v7/preference/g$c;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/support/v7/preference/g$c;->b(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    :cond_3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->m:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->D()Landroid/content/Context;

    move-result-object v0

    .line 969
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->m:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public D()Landroid/content/Context;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->a:Landroid/content/Context;

    return-object v0
.end method

.method public E()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    if-nez v0, :cond_0

    .line 996
    const/4 v0, 0x0

    .line 999
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method protected F()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$a;->a(Landroid/support/v7/preference/Preference;)V

    .line 1044
    :cond_0
    return-void
.end method

.method protected G()V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$a;->b(Landroid/support/v7/preference/Preference;)V

    .line 1055
    :cond_0
    return-void
.end method

.method public H()Landroid/support/v7/preference/g;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    return-object v0
.end method

.method public I()V
    .locals 0

    .prologue
    .line 1105
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->a()V

    .line 1106
    return-void
.end method

.method J()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1572
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->t()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1573
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1576
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1577
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1580
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1584
    :cond_2
    return-object v0
.end method

.method public a(Landroid/support/v7/preference/Preference;)I
    .locals 2
    .parameter

    .prologue
    .line 1011
    iget v0, p0, Landroid/support/v7/preference/Preference;->g:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->g:I

    if-eq v0, v1, :cond_0

    .line 1013
    iget v0, p0, Landroid/support/v7/preference/Preference;->g:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->g:I

    sub-int/2addr v0, v1

    .line 1023
    :goto_0
    return v0

    .line 1014
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1016
    const/4 v0, 0x0

    goto :goto_0

    .line 1017
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1018
    const/4 v0, 0x1

    goto :goto_0

    .line 1019
    :cond_2
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1020
    const/4 v0, -0x1

    goto :goto_0

    .line 1023
    :cond_3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput p1, p0, Landroid/support/v7/preference/Preference;->y:I

    .line 429
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->m:Landroid/content/Intent;

    .line 362
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1596
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    .line 1597
    return-void
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->C:Z

    .line 1688
    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :cond_0
    return-void
.end method

.method final a(Landroid/support/v7/preference/Preference$a;)V
    .locals 0
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    .line 1035
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference$b;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->e:Landroid/support/v7/preference/Preference$b;

    .line 904
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference$c;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->f:Landroid/support/v7/preference/Preference$c;

    .line 923
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1208
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->u:Z

    if-ne v0, p2, :cond_0

    .line 1209
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->u:Z

    .line 1212
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 1214
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->F()V

    .line 1216
    :cond_0
    return-void

    .line 1209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/preference/g;)V
    .locals 2
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    .line 1075
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->d:Z

    if-nez v0, :cond_0

    .line 1076
    invoke-virtual {p1}, Landroid/support/v7/preference/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/preference/Preference;->c:J

    .line 1079
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->c()V

    .line 1080
    return-void
.end method

.method protected a(Landroid/support/v7/preference/g;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1087
    iput-wide p2, p0, Landroid/support/v7/preference/Preference;->c:J

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->d:Z

    .line 1090
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->d:Z

    .line 1094
    return-void

    .line 1092
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->d:Z

    throw v0
.end method

.method public a(Landroid/support/v7/preference/h;)V
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 478
    iget-object v0, p1, Landroid/support/v7/preference/h;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->t()Ljava/lang/CharSequence;

    move-result-object v1

    .line 483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 484
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    :cond_0
    :goto_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 492
    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()Ljava/lang/CharSequence;

    move-result-object v1

    .line 494
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    :cond_1
    :goto_1
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 503
    if-eqz v0, :cond_5

    .line 504
    iget v1, p0, Landroid/support/v7/preference/Preference;->j:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 505
    :cond_2
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 506
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->D()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Landroid/support/v7/preference/Preference;->j:I

    invoke-static {v1, v4}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    .line 508
    :cond_3
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 509
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :cond_4
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    :cond_5
    sget v0, Landroid/support/v7/preference/i$b;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_6

    .line 517
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->x:Z

    if-eqz v0, :cond_b

    .line 521
    iget-object v0, p1, Landroid/support/v7/preference/h;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    .line 526
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->v()Z

    move-result v0

    .line 527
    iget-object v1, p1, Landroid/support/v7/preference/h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 529
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->a(Z)V

    .line 530
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/h;->b(Z)V

    .line 531
    return-void

    .line 487
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 498
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v1, v3

    .line 512
    goto :goto_2

    :cond_a
    move v2, v3

    .line 517
    goto :goto_3

    .line 523
    :cond_b
    iget-object v0, p1, Landroid/support/v7/preference/h;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method protected a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->C()V

    .line 939
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 668
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 669
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->i:Ljava/lang/CharSequence;

    .line 670
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->F()V

    .line 672
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 691
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->p:Z

    if-eq v0, p1, :cond_0

    .line 692
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->p:Z

    .line 695
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 697
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->F()V

    .line 699
    :cond_0
    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1320
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->e:Landroid/support/v7/preference/Preference$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->e:Landroid/support/v7/preference/Preference$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/Preference$b;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

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

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput p1, p0, Landroid/support/v7/preference/Preference;->z:I

    .line 454
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1610
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->C:Z

    .line 1612
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 1613
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->C:Z

    if-nez v1, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :cond_0
    if-eqz v0, :cond_1

    .line 1618
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1621
    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1225
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->v:Z

    if-ne v0, p2, :cond_0

    .line 1226
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->v:Z

    .line 1229
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 1231
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->F()V

    .line 1233
    :cond_0
    return-void

    .line 1226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 589
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 591
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->F()V

    .line 593
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 764
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->w:Z

    if-eq v0, p1, :cond_0

    .line 765
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->w:Z

    .line 766
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Landroid/support/v7/preference/Preference$a;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$a;->c(Landroid/support/v7/preference/Preference;)V

    .line 770
    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 1141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    if-nez v0, :cond_1

    .line 1142
    :cond_0
    const/4 v0, 0x0

    .line 1145
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/g;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 561
    iget v0, p0, Landroid/support/v7/preference/Preference;->g:I

    if-eq p1, v0, :cond_0

    .line 562
    iput p1, p0, Landroid/support/v7/preference/Preference;->g:I

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()V

    .line 567
    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1649
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->d(Landroid/os/Bundle;)V

    .line 1650
    return-void
.end method

.method public c(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1189
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->B:Ljava/util/List;

    .line 1191
    if-nez v2, :cond_1

    .line 1199
    :cond_0
    return-void

    .line 1195
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1197
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;Z)V

    .line 1196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 603
    return-void
.end method

.method d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1663
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1665
    if-eqz v0, :cond_0

    .line 1666
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->C:Z

    .line 1667
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 1668
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->C:Z

    if-nez v0, :cond_0

    .line 1669
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1253
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->b()V

    .line 1256
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->s:Ljava/lang/String;

    .line 1257
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->a()V

    .line 1258
    return-void
.end method

.method protected d(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1521
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1522
    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->e(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1532
    :goto_0
    return v1

    .line 1527
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1528
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1529
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1532
    goto :goto_0
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 682
    return-void
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1342
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1344
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1354
    :goto_0
    return v0

    .line 1349
    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v1}, Landroid/support/v7/preference/g;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1350
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1351
    invoke-direct {p0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1354
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 1547
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1371
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->b:Landroid/support/v7/preference/g;

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1242
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->C:Z

    .line 1637
    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public k()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public n()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->m:Landroid/content/Intent;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public p()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->o:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->o:Landroid/os/Bundle;

    .line 400
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Landroid/support/v7/preference/Preference;->y:I

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/support/v7/preference/Preference;->z:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/support/v7/preference/Preference;->g:I

    return v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1556
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->J()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->q:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->w:Z

    return v0
.end method

.method x()J
    .locals 2

    .prologue
    .line 788
    iget-wide v0, p0, Landroid/support/v7/preference/Preference;->c:J

    return-wide v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
