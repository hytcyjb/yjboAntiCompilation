.class public Lcom/zhihu/android/app/ui/dialog/j;
.super Lcom/zhihu/android/app/ui/dialog/b;
.source "RegisterDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/zhihu/android/app/ui/widget/CountDownView$b;
.implements Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener;


# instance fields
.field private b:Lcom/zhihu/android/api/b/a;

.field private c:Lcom/zhihu/android/api/b/aj;

.field private d:Lcom/zhihu/android/api/b/n;

.field private e:Lcom/zhihu/android/a/i;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/b;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->i:Z

    .line 93
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/dialog/j;)Lcom/zhihu/android/a/i;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/j;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/j;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/dialog/j;-><init>()V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v2, "extra_callback_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "extra_username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "extra_password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/j;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method

.method private a(Lcom/zhihu/android/api/model/Token;)V
    .locals 3
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->b:Lcom/zhihu/android/api/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/zhihu/android/api/model/Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/dialog/j$6;

    invoke-direct {v2, p0, p1}, Lcom/zhihu/android/app/ui/dialog/j$6;-><init>(Lcom/zhihu/android/app/ui/dialog/j;Lcom/zhihu/android/api/model/Token;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/a;->c(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 479
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/dialog/j;Lcom/zhihu/android/api/model/Token;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/dialog/j;->a(Lcom/zhihu/android/api/model/Token;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->c()V

    .line 336
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->d:Lcom/zhihu/android/api/b/n;

    invoke-static {p1}, Lcom/zhihu/android/app/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/dialog/j$3;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/dialog/j$3;-><init>(Lcom/zhihu/android/app/ui/dialog/j;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/n;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/dialog/j;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/dialog/j;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/dialog/j;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/j;->g()V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/dialog/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/dialog/j;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/j;->h()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 238
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->a()V

    .line 239
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->d:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 241
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->i:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Register_Phone_RegisterDialog"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v1, v1, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v2, v2, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v2, v2, Lcom/zhihu/android/a/bd;->d:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v3, v3, Lcom/zhihu/android/a/i;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v3}, Lcom/zhihu/android/base/widget/ZHEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/dialog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "Account"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GetCaptcha_PhoneCode_RegisterDialog"

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v1, v1, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v2, v2, Lcom/zhihu/android/a/i;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v3, v3, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v3, v3, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v3}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "Register_Email_RegisterDialog"

    goto :goto_1
.end method

.method private f()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->d:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->i:Z

    if-nez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setText(I)V

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setText(I)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->f:Lcom/zhihu/android/app/ui/widget/CountDownView;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/CountDownView;->a()V

    .line 361
    return-void
.end method

.method private h()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x2

    .line 482
    invoke-virtual {p0, v12}, Lcom/zhihu/android/app/ui/dialog/j;->setCancelable(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v1, v1, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 484
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 486
    const/16 v0, 0x190

    .line 487
    const/16 v1, 0x4b0

    .line 488
    iget-object v2, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v2, v2, Lcom/zhihu/android/a/i;->g:Lcom/zhihu/android/base/widget/ZHImageView;

    const-string v3, "alpha"

    new-array v4, v10, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 489
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 490
    iget-object v3, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v3, v3, Lcom/zhihu/android/a/i;->g:Lcom/zhihu/android/base/widget/ZHImageView;

    const-string v4, "scaleX"

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 491
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 492
    iget-object v4, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v4, v4, Lcom/zhihu/android/a/i;->g:Lcom/zhihu/android/base/widget/ZHImageView;

    const-string v5, "scaleY"

    new-array v6, v10, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 493
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 494
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->h:Lcom/zhihu/android/base/widget/ZHImageView;

    const-string v5, "scaleX"

    new-array v6, v11, [F

    fill-array-data v6, :array_3

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 495
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 496
    iget-object v5, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v5, v5, Lcom/zhihu/android/a/i;->h:Lcom/zhihu/android/base/widget/ZHImageView;

    const-string v6, "scaleY"

    new-array v7, v11, [F

    fill-array-data v7, :array_4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 497
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 498
    iget-object v6, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v6, v6, Lcom/zhihu/android/a/i;->l:Lcom/zhihu/android/base/widget/ZHTextView;

    const-string v7, "alpha"

    new-array v8, v11, [F

    fill-array-data v8, :array_5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 499
    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 501
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 502
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v12

    const/4 v2, 0x1

    aput-object v3, v7, v2

    aput-object v4, v7, v10

    const/4 v2, 0x3

    aput-object v0, v7, v2

    const/4 v0, 0x4

    aput-object v5, v7, v0

    aput-object v6, v7, v11

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 504
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/j$7;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/dialog/j$7;-><init>(Lcom/zhihu/android/app/ui/dialog/j;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 529
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 530
    return-void

    .line 488
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 490
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 492
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 494
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 496
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 498
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, v1, v1, p1, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {p1}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v6, p0, Lcom/zhihu/android/app/ui/dialog/j;->c:Lcom/zhihu/android/api/b/aj;

    invoke-static {p1}, Lcom/zhihu/android/app/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/zhihu/android/app/ui/dialog/j$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/dialog/j$1;-><init>(Lcom/zhihu/android/app/ui/dialog/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, p2, p3, v0}, Lcom/zhihu/android/api/b/aj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 327
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v6, p0, Lcom/zhihu/android/app/ui/dialog/j;->c:Lcom/zhihu/android/api/b/aj;

    new-instance v0, Lcom/zhihu/android/app/ui/dialog/j$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/dialog/j$2;-><init>(Lcom/zhihu/android/app/ui/dialog/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, p1, p2, p3, v0}, Lcom/zhihu/android/api/b/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-direct {p0, p2}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/zhihu/android/app/ui/dialog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/j$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/dialog/j$4;-><init>(Lcom/zhihu/android/app/ui/dialog/j;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p5, v0}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;Lcom/zhihu/android/app/ui/dialog/b$a;)V

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->b()V

    .line 396
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zhihu/android/app/ui/dialog/j;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/j;->f()V

    .line 235
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setOnDrawableClickListener(Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener;)V

    .line 192
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-static {p1}, Lcom/zhihu/android/app/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/zhihu/android/api/model/RegisterForm;->createEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v1, v1, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->a()V

    .line 536
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->b:Lcom/zhihu/android/api/b/a;

    new-instance v2, Lcom/zhihu/android/app/ui/dialog/j$8;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/dialog/j$8;-><init>(Lcom/zhihu/android/app/ui/dialog/j;)V

    invoke-interface {v1, v0, v2}, Lcom/zhihu/android/api/b/a;->a(Lcom/zhihu/android/api/model/RegisterForm;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 552
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-static {p1}, Lcom/zhihu/android/app/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/zhihu/android/api/model/RegisterForm;->createPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->b:Lcom/zhihu/android/api/b/a;

    new-instance v2, Lcom/zhihu/android/app/ui/dialog/j$5;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/dialog/j$5;-><init>(Lcom/zhihu/android/app/ui/dialog/j;)V

    invoke-interface {v1, v0, v2}, Lcom/zhihu/android/api/b/a;->a(Lcom/zhihu/android/api/model/RegisterForm;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 429
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->i:Z

    .line 366
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/j;->f()V

    .line 368
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setText(I)V

    .line 369
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHEditText;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->c:Lcom/zhihu/android/base/widget/ZHButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->f:Lcom/zhihu/android/app/ui/widget/CountDownView;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/CountDownView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->f:Lcom/zhihu/android/app/ui/widget/CountDownView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CountDownView;->a(I)V

    .line 376
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->f:Lcom/zhihu/android/app/ui/widget/CountDownView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CountDownView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->c:Lcom/zhihu/android/base/widget/ZHButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 563
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 203
    :sswitch_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/j;->e()V

    goto :goto_0

    .line 206
    :sswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x7f1000de -> :sswitch_0
        0x7f1001af -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;Lcom/zhihu/android/app/ui/widget/DrawableClickEditText$OnDrawableClickListener$DrawablePosition;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/dialog/j;->b(Z)V

    .line 557
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/dialog/b;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    const-class v1, Lcom/zhihu/android/api/b/a;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/a;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->b:Lcom/zhihu/android/api/b/a;

    .line 112
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    const-class v1, Lcom/zhihu/android/api/b/n;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/n;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->d:Lcom/zhihu/android/api/b/n;

    .line 114
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    const-class v1, Lcom/zhihu/android/api/b/aj;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/aj;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->c:Lcom/zhihu/android/api/b/aj;

    .line 116
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-string v1, "extra_callback_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->f:Ljava/lang/String;

    .line 120
    const-string v1, "extra_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->g:Ljava/lang/String;

    .line 121
    const-string v1, "extra_password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->h:Ljava/lang/String;

    .line 123
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/i;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    .line 130
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    invoke-virtual {v0}, Lcom/zhihu/android/a/i;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/zhihu/android/app/ui/dialog/b;->onDestroy()V

    .line 183
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->r()V

    .line 186
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/j;->e()V

    .line 216
    const/4 v0, 0x1

    .line 219
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
    .line 230
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 135
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/dialog/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 139
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    new-instance v1, Lcom/zhihu/android/app/util/i;

    invoke-direct {v1}, Lcom/zhihu/android/app/util/i;-><init>()V

    invoke-static {}, Lcom/zhihu/android/app/util/be;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/util/i;->a(Ljava/util/List;)Lcom/zhihu/android/app/util/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->setOnHintListener(Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView$a;)V

    .line 143
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->e:Lcom/zhihu/android/a/be;

    iget-object v0, v0, Lcom/zhihu/android/a/be;->c:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->d:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->c:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->c:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->d:Lcom/zhihu/android/a/bd;

    iget-object v0, v0, Lcom/zhihu/android/a/bd;->f:Lcom/zhihu/android/app/ui/widget/CountDownView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/CountDownView;->setICountDownFinish(Lcom/zhihu/android/app/ui/widget/CountDownView$b;)V

    .line 154
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->n:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v1, 0x7f090153

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/dialog/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->setInputType(I)V

    .line 158
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterDialog_China"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->k:Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/DrawableClickEditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 174
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 177
    return-void

    .line 160
    :cond_1
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a()Lcom/zhihu/android/app/abtest/ABForSocialRegist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/abtest/ABForSocialRegist;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterDialog_Abroad"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/j;->e:Lcom/zhihu/android/a/i;

    iget-object v0, v0, Lcom/zhihu/android/a/i;->m:Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHInlineAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
