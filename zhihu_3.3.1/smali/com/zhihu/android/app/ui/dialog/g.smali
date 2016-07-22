.class public Lcom/zhihu/android/app/ui/dialog/g;
.super Lcom/zhihu/android/app/ui/dialog/b;
.source "LoginDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener;


# instance fields
.field private b:Lcom/zhihu/android/api/b/a;

.field private c:Lcom/zhihu/android/a/g;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/zhihu/android/api/model/SocialBindInfo;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/b;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->j:Z

    .line 103
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/dialog/g;)Lcom/zhihu/android/a/g;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/zhihu/android/api/model/SocialBindInfo;I)Lcom/zhihu/android/app/ui/dialog/g;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/g;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/dialog/g;-><init>()V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "extra_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v2, "extra_callback_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "extra_social_bindinfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    const-string v2, "extra_type_source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/g;->setArguments(Landroid/os/Bundle;)V

    .line 155
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/g;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/dialog/g;-><init>()V

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v2, "extra_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v2, "extra_callback_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "extra_username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "extra_password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "extra_isinside"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/g;->setArguments(Landroid/os/Bundle;)V

    .line 132
    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/dialog/g;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/dialog/g;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/dialog/g;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/dialog/g;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->h:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setVisibility(I)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setEnabled(Z)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/dialog/g;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/g;->e()V

    return-void
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/dialog/g;)Lcom/zhihu/android/api/b/a;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->b:Lcom/zhihu/android/api/b/a;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 468
    invoke-static {}, Lcom/zhihu/android/app/util/av;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900b9

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I)V

    .line 470
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->dismiss()V

    .line 511
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v1, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->socialId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v3, v3, Lcom/zhihu/android/api/model/SocialBindInfo;->grantType:Ljava/lang/String;

    invoke-static {v3}, Lcom/zhihu/android/api/util/GrantType;->valueOf(Ljava/lang/String;)Lcom/zhihu/android/api/util/GrantType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhihu/android/app/util/t;->a(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v3, v3, Lcom/zhihu/android/api/model/SocialBindInfo;->accessToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v4, v4, Lcom/zhihu/android/api/model/SocialBindInfo;->expired:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v5, v5, Lcom/zhihu/android/api/model/SocialBindInfo;->refreshToken:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/api/model/RegisterForm;->createBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->b:Lcom/zhihu/android/api/b/a;

    invoke-static {}, Lcom/zhihu/android/app/util/av;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v3, v3, Lcom/zhihu/android/api/model/SocialBindInfo;->grantType:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhihu/android/app/ui/dialog/g$4;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/dialog/g$4;-><init>(Lcom/zhihu/android/app/ui/dialog/g;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/zhihu/android/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/api/model/RegisterForm;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/dialog/g;)Lcom/zhihu/android/api/model/SocialBindInfo;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    return-object v0
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/dialog/g;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->l:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, v1, v1, p1, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 281
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->a()V

    .line 362
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->d:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/g$2;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/dialog/g$2;-><init>(Lcom/zhihu/android/app/ui/dialog/g;)V

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Lcom/zhihu/android/app/ui/dialog/b$a;)V

    .line 379
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/g;->d()V

    .line 345
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setOnDrawableClickListener(Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener;)V

    .line 276
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->a()V

    .line 387
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v2, v2, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhihu/android/app/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v3, v3, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v3}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zhihu/android/api/model/Authorisation;->createPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->b:Lcom/zhihu/android/api/b/a;

    new-instance v3, Lcom/zhihu/android/app/ui/dialog/g$3;

    invoke-direct {v3, p0, v0}, Lcom/zhihu/android/app/ui/dialog/g$3;-><init>(Lcom/zhihu/android/app/ui/dialog/g;Z)V

    invoke-interface {v2, v1, v3}, Lcom/zhihu/android/api/b/a;->a(Lcom/zhihu/android/api/model/Authorisation;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 465
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->h:I

    packed-switch v0, :pswitch_data_1

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :pswitch_1
    const-string v1, "Account"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Login_Phone_LoginDialog"

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_0
    const-string v0, "Login_Email_LoginDialog"

    goto :goto_2

    .line 292
    :pswitch_2
    sget-object v0, Lcom/zhihu/android/app/ui/dialog/g$5;->a:[I

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v1, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->grantType:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/api/util/GrantType;->valueOf(Ljava/lang/String;)Lcom/zhihu/android/api/util/GrantType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/GrantType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 294
    :pswitch_3
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind_Wechat_LoginDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->l:I

    invoke-static {v3}, Lcom/zhihu/android/app/util/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 297
    :pswitch_4
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind_QQ_LoginDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->l:I

    invoke-static {v3}, Lcom/zhihu/android/app/util/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 300
    :pswitch_5
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind_Weibo_LoginDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zhihu/android/app/ui/dialog/g;->l:I

    invoke-static {v3}, Lcom/zhihu/android/app/util/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 308
    :pswitch_6
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Switch_LoginDialog_SocialDialog"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->d:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/dialog/p;->a(Ljava/lang/String;I)Lcom/zhihu/android/app/ui/dialog/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_social"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/p;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->dismiss()V

    goto/16 :goto_0

    .line 313
    :pswitch_7
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Switch_LoginDialog_RegisterDialog"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->j:Z

    .line 315
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v2, v2, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_register"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/j;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->dismiss()V

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x7f1000d9
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 292
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener$DrawablePosition;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 517
    :sswitch_0
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Switch_LoginDialog_LoginCannotDialog"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/dialog/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_login_cannot"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/f;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->dismiss()V

    goto :goto_0

    .line 522
    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/dialog/g;->b(Z)V

    goto :goto_0

    .line 515
    :sswitch_data_0
    .sparse-switch
        0x7f1000d7 -> :sswitch_0
        0x7f1001b4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/dialog/b;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    const-class v1, Lcom/zhihu/android/api/b/a;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/a;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->b:Lcom/zhihu/android/api/b/a;

    .line 164
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    const-string v0, "extra_type"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->h:I

    .line 169
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->h:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    const-string v0, "extra_callback_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->d:Ljava/lang/String;

    .line 172
    const-string v0, "extra_username"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->e:Ljava/lang/String;

    .line 173
    const-string v0, "extra_password"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->f:Ljava/lang/String;

    .line 174
    const-string v0, "extra_isinside"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->i:Z

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v0, "extra_callback_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->d:Ljava/lang/String;

    .line 178
    const-string v0, "extra_social_bindinfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/SocialBindInfo;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    .line 179
    const-string v0, "extra_type_source"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->l:I

    .line 181
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->i:Z

    .line 182
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->g:Lcom/zhihu/android/api/model/SocialBindInfo;

    iget-object v0, v0, Lcom/zhihu/android/api/model/SocialBindInfo;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    const v0, 0x7f040032

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/g;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    .line 193
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    invoke-virtual {v0}, Lcom/zhihu/android/a/g;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/zhihu/android/app/ui/dialog/b;->onDestroy()V

    .line 261
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->finish()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    if-eqz v0, :cond_1

    .line 266
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->k:Z

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->r()V

    .line 270
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/16 v0, 0x8

    const/4 v5, 0x0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/dialog/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->h:I

    packed-switch v1, :pswitch_data_0

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 229
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    new-instance v1, Lcom/zhihu/android/app/util/i;

    invoke-direct {v1}, Lcom/zhihu/android/app/util/i;-><init>()V

    invoke-static {}, Lcom/zhihu/android/app/util/be;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/util/i;->a(Ljava/util/List;)Lcom/zhihu/android/app/util/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->setOnHintListener(Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView$a;)V

    .line 231
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setOnDrawableClickListener(Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->f:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->i:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zhihu/android/app/ui/dialog/g$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/dialog/g$1;-><init>(Lcom/zhihu/android/app/ui/dialog/g;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 251
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 252
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 255
    return-void

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f0900ce

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 204
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->i:Z

    if-eqz v1, :cond_1

    .line 205
    new-instance v1, Lcom/zhihu/android/base/a/a/b;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    invoke-virtual {v2}, Lcom/zhihu/android/a/g;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020103

    iget-object v4, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    invoke-virtual {v4}, Lcom/zhihu/android/a/g;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    invoke-virtual {v2}, Lcom/zhihu/android/a/g;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f007e

    invoke-virtual {v1, v2, v3}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 208
    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v2, v2, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v2, v5, v5, v1, v5}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->e:Lcom/zhihu/android/base/widget/ZHButton;

    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/dialog/g;->i:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->d:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v0, v0, Lcom/zhihu/android/a/g;->e:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginDialog_Normal"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->h:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 219
    :pswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 221
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->d:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/g;->c:Lcom/zhihu/android/a/g;

    iget-object v1, v1, Lcom/zhihu/android/a/g;->e:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 223
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginDialog_SocialBind"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
