.class Landroid/support/v7/widget/l;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final b:[I

.field private static final c:[I


# instance fields
.field final a:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/an;

.field private e:Landroid/support/v7/widget/an;

.field private f:Landroid/support/v7/widget/an;

.field private g:Landroid/support/v7/widget/an;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/l;->b:[I

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/a/a$a;->textAllCaps:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/l;->c:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x6ft 0x1t 0x1t 0x1t
        0x6dt 0x1t 0x1t 0x1t
        0x70t 0x1t 0x1t 0x1t
        0x6et 0x1t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/an;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Landroid/support/v7/widget/an;

    invoke-direct {v0}, Landroid/support/v7/widget/an;-><init>()V

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/an;->d:Z

    .line 148
    iput-object v1, v0, Landroid/support/v7/widget/an;->a:Landroid/content/res/ColorStateList;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/l;
    .locals 2
    .parameter

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Landroid/support/v7/widget/m;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/m;-><init>(Landroid/widget/TextView;)V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/l;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/l;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/l;->e:Landroid/support/v7/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/l;->f:Landroid/support/v7/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/l;->g:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/an;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;)V

    .line 130
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->e:Landroid/support/v7/widget/an;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;)V

    .line 131
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->f:Landroid/support/v7/widget/an;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;)V

    .line 132
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/l;->g:Landroid/support/v7/widget/an;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;)V

    .line 134
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 109
    sget-object v0, Landroid/support/v7/widget/l;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/l;->a(Z)V

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;[I)V

    .line 140
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    .line 60
    sget-object v3, Landroid/support/v7/widget/l;->b:[I

    invoke-virtual {v2, p1, v3, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 61
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 64
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v2, v0, v5}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/an;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/an;

    .line 67
    :cond_0
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {v3, v8, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v2, v0, v5}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/an;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/l;->e:Landroid/support/v7/widget/an;

    .line 70
    :cond_1
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {v3, v9, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v2, v0, v5}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/an;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/l;->f:Landroid/support/v7/widget/an;

    .line 73
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v2, v0, v5}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/l;->g:Landroid/support/v7/widget/an;

    .line 76
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-nez v0, :cond_5

    .line 86
    if-eq v4, v7, :cond_7

    .line 87
    sget-object v0, Landroid/support/v7/a/a$k;->TextAppearance:[I

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 89
    sget v0, Landroid/support/v7/a/a$k;->TextAppearance_textAllCaps:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    sget v0, Landroid/support/v7/a/a$k;->TextAppearance_textAllCaps:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 92
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    :goto_1
    sget-object v3, Landroid/support/v7/widget/l;->c:[I

    invoke-virtual {v2, p1, v3, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 100
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/l;->a(Z)V

    .line 106
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/e/a;

    iget-object v2, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/e/a;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 123
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
